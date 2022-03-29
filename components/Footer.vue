<template>
    <footer>
        <div class="footer-email">
            <div class="footer-email-wrapper">
                <div class="footer-email-text">
                    <h1 class="bold">
                        DO YOU HAVE ANY QUESTION?
                    </h1>
                    <h1 class="regular">
                        LETS IMPROVE YOUR BUSINESS
                    </h1>
                </div>
                <form action="">
                    <div class="form-section-one">
                        <input type="text"  placeholder="Name">
                        <input type="email" placeholder="Email">
                    </div>
                    <div class="form-section-two">
                        <input type="text" placeholder="Message" class="message">
                        <input type="button" value="SUBMIT" class="submit-btn">
                    </div>
                </form>
            </div>
        </div>
        <div class="contact-info">
            <div class="footer-wrapper">
            <div class="footer-info">
                <div class="footer-logo">
                    <img src="../assets/images/logowhite.png" alt="">
                </div>
                <p class="description">
                    Roamtech specializes in the development of mobile solutions and services that help businesses communicate and connect with their audiences.
                </p>
            </div>
            <div class="contact">
                <p id="main">CONTACT US</p>
                <div class="contact-details">
                    <p>Phone +254 (0)20 2 699 699</p>
                    <p>Mail info@roamtech.com</p>
                    <p>4th floor, Stellato, Muthithi Road</p>
                    <p>Westland, Nairobi Kenya</p>
                </div>
                <div class="social-media">
                    <img src="../assets/images/icons.png" alt="">
                </div>
            </div>
        </div>
        </div>
        <div class="copyright">
            <div class="footer-copyright-wrapper">
            <p>2021 Roamtech - Your digital solution partner</p>
        </div>
        </div>
    </footer>
</template>

<script>
export default {

}
</script>

<style>
    footer{
        display: flex;
        flex-direction: column;
    }
    .footer-email{
        background-color: var(--orange);
        width: 100%;
    }
    .footer-copyright-wrapper{
        width: 90%;
        max-width: 1200px;
        margin: 0 auto;
        padding:5px 0;
    }
    .footer-email-wrapper{
        width: 90%;
        max-width: 1200px;
        margin: 0 auto;
        display: flex;
        align-items: center;
        padding: 30px calc((100vw - 1400px) / 2);
        gap: 20px;
        align-items: center;
    }
    .footer-wrapper{
        width: 90%;
        margin: 0 auto;
        display: grid;
        align-items: center;
        grid-template-columns: repeat(2, 1fr);
        padding: 20px 0;
    }
    .footer-email-text h1{
        font-size: 2.3rem;
    }
    form{
        display: flex;
        flex-direction: column;
        gap: 20px;
    }
    .form-section-one{
        display: flex;
        gap: 10px;
    }
     .form-section-one input{ 
         width: 300px;
     }
    .form-section-two{
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        grid-gap: 10px;
    }
    .message{
        grid-column-start: 1;
        grid-column-end: 4;
    }
    form input{
        padding: 10px;
        border-radius: 5px;
    }
    .footer-email .bold{
        font-weight: bold;
        color: var(--black);
    }
    .regular{
        font-weight: lighter;
    }
    .contact-details{
        font-weight: lighter;
    }
    .footer-info{
        display: flex;
        
        gap: 50px;
    }
    .contact-info{
        background-color: var(--black);
        padding: 80px calc((100vw - 1300px) / 2);
        display: grid;
        align-items: flex-start;
        grid-template-columns: repeat(2, 1fr);
        color: var(--white);
        grid-gap: 20px;
    }
    .description{
        width: 43%;
        font-weight: lighter;
    }
    .footer-logo{
        width: 150px;
        margin-top: -30px;
    }
    #main{
        font-weight: bold;
    }
    .copyright{
        background-color: var(--footerblue);
        color: var(--white);
        padding: 20px calc((100vw - 1250px) / 2);
        font-weight: lighter;
    }
    .submit-btn{
        color: var(--white);
        font-weight: bold;
        background-color: var(--black);
        cursor: pointer;
    }
    .facebook{
        width: 30px;
        height: 20px;
    }
    .social-media{
        display: flex;
        gap: 10px;
        margin: 10px 0;
        width: 20%;
    }
    @media only screen and (max-width: 800px) {
        .footer-email-wrapper,
        .footer-wrapper,
        form,
        .form-section-one,
        .form-section-two,
         .contact-info,
         .contact,
         .footer-info{
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .footer-info{
            gap: 10px;
        }
        .footer-wrapper{
            gap: 20px;
        }
        .footer-email-text h1{
            font-size: 1.2rem;
        }
        input{
            width: 300px;
        }
        .contact-info{
            gap: 10px;
        }
        .description{
            width: 90%;
        }
        .social-media{
        width: 150px;
        }
        .footer-logo{
            width: 150px;
        }
    }
</style>