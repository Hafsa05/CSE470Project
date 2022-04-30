<?php

class paytest extends \train\Framework\TestCase{
    protected $pay;
    public function testFirstClassPayment(){
        $this->pay = new \train\controller\pay;
        $this->pay->setFirstClassPayment(5, 50);
        $this->assertEquals( $this->pay->getFirstClassPayment(), 250 );


    }


}
?>
