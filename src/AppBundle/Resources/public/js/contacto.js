
function validateEmail(email) { 
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
} 

function isNormalInteger(str) {
    var n = ~~Number(str);
    return String(n) === str && n >= 0;
}

var enviando = false;
function validar_form() {
	if(enviando) return false;
	var errores = false;
	var nombre = $('#form_nombre').val().trim();
	var email = $('#form_email').val().trim();
	var telefono = $('#form_telefono').val().trim();
	var mensaje = $('#form_mensaje').val().trim();
	var fecha_ingreso = $('#input-fecha-ingreso').val().trim();
	var fecha_salida = $('#input-fecha-salida').val().trim();
	var cantidad_adultos = $('#cantidad_adultos').val().trim();
	var cantidad_ninos = $('#cantidad_ninos').val().trim();
	
	if(nombre == "") {
		$('#form_nombre').addClass('error');
		errores = true;
	} else {
		$('#form_nombre').removeClass('error');
	}
	if(telefono == "") {
		$('#form_telefono').addClass('error');
		errores = true;
	} else {
		$('#form_telefono').removeClass('error');
	}
	if((email == "")||(!validateEmail(email))) {
		$('#form_email').addClass('error');
		errores = true;
	} else {
		$('#form_email').removeClass('error');
	}
	if(mensaje == "") {
		$('#form_mensaje').addClass('error');
		errores = true;
	} else {
		$('#form_mensaje').removeClass('error');
	}
	
	if(!errores) {
		enviando =true;
		$('#form_img_loading').addClass('on');
		$('.send').addClass('off');
		$.post('/contacto-ajax',{nombre: nombre, email: email, telefono: telefono, mensaje: mensaje,
			fecha_ingreso: fecha_ingreso, fecha_salida: fecha_salida, cantidad_adultos: cantidad_adultos, cantidad_ninos: cantidad_ninos
			}
		,function(data) {
			enviando = false;
			$('#form_img_loading').removeClass('on');
			$('.send').removeClass('off');
			if(data.ok) {
				$('#form_contacto').get(0).reset();
				alert("Su consulta fue enviada correctamente. Gracias.");
			} else {
				alert("Su consulta no puede ser procesada en este momento.");
			}
			//$('body').append(data);
		},'json');
	}
	
	return false; // siempre false para que no haga el submit real
}

$(document).ready(function() {
	$('#form_img_loading').removeClass('on');
	
	$('.send').click(function(e) { 
		e.preventDefault();
		$('#form_contacto').submit();
	});
});