  $(document).ready(function() {
    $('#Modal_Login').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            id: {
                validators: {
                        stringLength: {
                        min: 6,
                        max: 18,
                    },
                        notEmpty: {
                        message: 'Vui lòng nhập tài khoản'
                    }
                }
            },
             password: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập mật khẩu'
                    }
                }
            },	 			                     			 
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#form-login').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});

  $(document).ready(function() {
    $('#Modal_registration').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            id: {
                validators: {
                        stringLength: {
                        min: 6,
                        max: 18,
                    },
                        notEmpty: {
                        message: 'Vui lòng nhập tài khoản'
                    }
                }
            },
             password: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập mật khẩu'
                    }
                }
            },
            repassword: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập lại mật khẩu'
                    },
                    equalTo:'password'
                }
            },
            hoten: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập họ tên'
                    }
                }
            },
            date: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập ngày sinh'
                    }
                }
            },
            email: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập email'
                    },
                    emailAddress: {
                        message: 'Vui lòng nhập địa chỉ email'
                    }
                }
            },
            sdt: {
                validators: {
                     
                    notEmpty: {
                        message: 'Vui lòng nhập số điện thoại'
                    },
                    phone: {
                        message: 'Vui lòng nhập đúng số điện thoại'
                    }
                }
            },
            diachi: {
                validators: {
                     stringLength: {
                        min: 6,
                        max: 18,
                    },
                    notEmpty: {
                        message: 'Vui lòng nhập địa chỉ'
                    }
                }
            },
                                                                     
                }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#form-dangki').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});