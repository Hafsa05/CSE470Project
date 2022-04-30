<?php
namespace train\controller;

require_once 'session.php';
  require_once '../constants.php';
  if (!isset($_SESSION['amount'], $_SESSION['email'])) {
    @session_destroy();
    header("Location: ../");
    exit;
  }


  $pay = curl_init();
  $email = $_SESSION['email'];
  $amount = $_SESSION['amount'] . "00";

class pay{

  public $number_of_ticket;
  public $price_of_ticket;
  public $payment_amount;
    
    public function setFirstClassPayment($n1, $n2) {
     
        $this->number_of_ticket = $n1;
        $this->price_of_ticket = $n2;

    }


    public function getFirstClassPayment(){

      $this->payment_amount = $this->number_of_ticket * $this->price_of_ticket;
      return $this->payment_amount;
    }

    public function setSecondClassPayment($n1, $n2) {
     
      $this->number_of_ticket = $n1;
      $this->price_of_ticket = $n2;

  }


  public function getFirstClassPayment(){

    $this->payment_amount = $this->number_of_ticket * $this->price_of_ticket;
    return $this->payment_amount;
  }
}
  
  curl_setopt_array($pay, array(
    CURLOPT_URL => "https://api.paystack.co/transaction/initialize",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_SSL_VERIFYPEER => 0,
    CURLOPT_CUSTOMREQUEST => "POST",
    

    CURLOPT_POSTFIELDS => json_encode([
      'amount' => $amount,
      'email' => $email,
    ]),
    CURLOPT_HTTPHEADER => [
      "authorization: Bearer $paystack", 
      "content-type: application/json",
      "cache-control: no-cache"
    ],
  ));

  $response = curl_exec($pay);
  $err = curl_error($pay);
  if ($err) {
    header("Location: individual.php?page=pay&error=payment&access=0");
    exit();
  }
  $tranx = json_decode($response);
  if (!$tranx->status or empty($tranx->status)) {
    header("Location: individual.php?page=pay&error=payment&access=1");
    exit();
  }

  
  header('Location: ' . $tranx->data->authorization_url);








