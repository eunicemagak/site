<template>
    <footer>
        <div class="footer-email relative">
            <div class="footer-email-wrapper ">
                <div class="footer-email-text">
                    <h1 class="regular">
                        DO YOU HAVE ANY QUESTION?
                    </h1>
                    <!-- <h1 class="regular">
                        LETS IMPROVE YOUR BUSINESS
                    </h1> -->
                </div>
                <form ref="form" @submit.prevent="sendEmail">
                    <div class="form-section-one">
                        <input type="text" placeholder="Name" name="from_name">
                        <input type="email" placeholder="Email" name="from_email">
                    </div>
                    <div class="form-section-two">
                        <input type="text" placeholder="Message" class="message" name="message">
                        <button type="submit" value="" class="submit-btn">
                            <template v-if="submitting">SUBMITING....</template>
                            <template v-else>SUBMIT</template>
                        </button>
                    </div>
                </form>
            </div>
                <div id="myToast"
                    class="hidden absolute right-10 top-10 px-5 py-4 border-r-8 border-green-500 bg-white drop-shadow-lg">
                    <p class="text-sm">
                        <!-- Polish the toast with an circle blue "i" (stands for information) -->
                        <span
                            class="mr-2 inline-block px-3 py-1 rounded-full bg-green-500 text-white font-extrabold">i</span>
                        Thank You For Contacting Us, We Will Get Back To You Soonest Possible
                    </p>
                </div>
                <div id="failToast"
                    class="hidden absolute right-10 top-10 px-5 py-4 border-r-8 border-red-500 bg-white drop-shadow-lg">
                    <p class="text-sm">
                        <!-- Polish the toast with an circle blue "i" (stands for information) -->
                        <span
                            class="mr-2 inline-block px-3 py-1 rounded-full bg-red-500 text-white font-extrabold">x</span>
                        We Experienced Some Difficulty While Submiting, Please Try Again
                    </p>
                </div>
        </div>
        <div class="contact-info">
            <div class="footer-info">
                <div class="footer-logo">
                    <img src="../assets/images/logowhite.png" alt="">
                </div>
                <div class="contact">
                    <p id="main">CONTACT US</p>
                    <div class="contact-details">
                        <p>+254 (0)20 2 699 699 // info@roamtech.com // 4th floor, Stellato, Muthithi Road // Westlands,
                        </p>
                        <p>Nairobi, Kenya</p>
                    </div>
                    <div class="social-media">
                        <a href="https://www.linkedin.com/company/roamtech-solutions/">
                            <font-awesome-icon :icon="['fab', 'linkedin-in']" class="social-icon" />
                        </a>
                        <font-awesome-icon :icon="['fab', 'instagram']" class="social-icon" />
                        <a href="https://twitter.com/roamtech?lang=en">
                            <font-awesome-icon :icon="['fab', 'twitter']" class="social-icon" />
                        </a>
                        <a href="https://m.facebook.com/profile.php?id=346148706193152">
                            <font-awesome-icon :icon="['fab', 'facebook-f']" class="social-icon" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="footer-copyright-wrapper">
                <p>© {{ year }} Roamtech - Your digital solution partner</p>
            </div>
        </div>
    </footer>
</template>

<script>

import { library } from "@fortawesome/fontawesome-svg-core";
import { faLinkedinIn, faTwitter, faFacebookF, faInstagram } from "@fortawesome/free-brands-svg-icons";

library.add(faLinkedinIn);
library.add(faFacebookF);
library.add(faInstagram);
library.add(faTwitter);
// Vue.component("font-awesome-icon", FontAwesomeIcon);

// Vue.config.productionTip = false;
import emailjs from '@emailjs/browser';
export default {
    data() {
        return {
            year: '',
            submitting: false
        };
    },
    mounted() {
        const d = new Date();
        this.year = d.getFullYear();
    },
    methods: {
        sendEmail() {
            this.submitting = true,
                emailjs.sendForm('service_as7dy6i', 'template_kmgin4a', this.$refs.form, 'HMiVWnwfe2x0rf2rv')
                    .then((result) => {
                        this.submitting = false
                        document.getElementById("myToast").classList.remove("hidden");
                        // Hide the toast after 5 seconds (5000ms)
                        // you can set a shorter/longer time by replacing "5000" with another number
                        setTimeout(function () {
                            document.getElementById("myToast").classList.add("hidden");
                        }, 5000);
                        console.log('SUCCESS!', result.text);
                        this.$refs.form.reset();
                    }, (error) => {
                        this.submitting = false,
                            this.submitting = false
                        document.getElementById("failToast").classList.remove("hidden");
                        // Hide the toast after 5 seconds (5000ms)
                        // you can set a shorter/longer time by replacing "5000" with another number
                        setTimeout(function () {
                            document.getElementById("failToast").classList.add("hidden");
                        }, 5000);
                        console.log('FAILED...', error.text);
                        this.$refs.form.reset();
                    });
        }
    }
}

</script>
<style>
footer {
    display: flex;
    flex-direction: column;
}

.footer-email {
    background-color: var(--orange);
    width: 100%;
}

.footer-copyright-wrapper {
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    padding: 5px 0;
}

.footer-email-wrapper {
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
    display: flex;
    padding: 40px 0;
    gap: 20px;
    align-items: center;
}

.footer-wrapper {
    width: 90%;
    margin: 0 auto;
    display: grid;
    align-items: center;
    grid-template-columns: repeat(2, 1fr);
    padding: 20px 0;
}

.footer-email-text h1 {
    font-size: 2.3rem;
}

form {
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.form-section-one {
    display: flex;
    gap: 10px;
}

.form-section-one input {
    width: 300px;
}

.form-section-two {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 10px;
}

.message {
    grid-column-start: 1;
    grid-column-end: 4;
}

form input {
    padding: 10px;
    border-radius: 5px;
}

.footer-email .bold {
    font-weight: bold;
    color: var(--black);
}

.regular {
    font-weight: lighter;
}

.contact-details {
    font-weight: lighter;
}

.footer-info {
    display: flex;
    justify-content: space-between;
    width: 90%;
    max-width: 1400px;
    margin: 0 auto;
}

.contact-info {
    background-color: var(--black);
    width: 100%;
    padding: 20px;
    color: var(--white);
}

.description {
    width: 43%;
    font-weight: lighter;
}

.footer-logo {
    width: 150px;
    margin-top: -30px;
}

#main {
    font-weight: bold;
}

.copyright {
    background-color: var(--footerblue);
    color: var(--white);
    width: 100%;
    padding: 20px;
    font-weight: lighter;
    text-align: center;
}

.submit-btn {
    color: var(--white);
    font-weight: bold;
    background-color: var(--black);
    cursor: pointer;
}

.facebook {
    width: 30px;
    height: 20px;
}

.social-media {
    display: flex;
    align-items: center;
    gap: 10px;
    margin: 10px 0;
}

.social-icon {
    color: var(--white);
    font-size: 20px;
    cursor: pointer;
}

.social-icon:hover {
    color: var(--footerblue);
}

@media only screen and (max-width: 900px) {

    .footer-email-wrapper,
    .footer-wrapper,
    form,
    .form-section-one,
    .form-section-two,
    .contact-info,
    .contact,
    .footer-info {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .footer-info {
        gap: 10px;
    }

    .footer-wrapper {
        gap: 20px;
    }

    .footer-email-text h1 {
        font-size: 1.2rem;
    }

    .footer-email input {
        width: 98%;
        max-width: 300px;
    }

    .contact-info {
        gap: 10px;
    }

    .description {
        width: 90%;
    }

    .social-media {
        justify-content: center;
        width: 150px;
    }

    .footer-logo {
        width: 150px;
    }
}
</style>