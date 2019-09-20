function increasePassengerAmount () {
  // this.parentNode.querySelector('input[type=number]').stepUp()
  // Grab the value
  currentValue = document.getElementById('booking_passengers').value
  // Check if its less than 4
  if (currentValue < 4)
  // If less than 4, add
    document.getElementById('booking_passengers').stepUp();

}

function decreasePassengerAmount () {

  currentValue = document.getElementById('booking_passengers').value
  // Check if its less than 4
  if (currentValue > 1)
    document.getElementById('booking_passengers').stepDown();
}

'use strict';

function randomBetween(min, max, floor = true) {
  let r = Math.random() * max + min;

  if (floor === true) {
    return Math.floor(r);
  }

  return r;
}

function Roulette(_canvas, _context) {

  const GREEN      = '#7FBD35';
  const DARK_GREEN = '#71A82F';

  const RED      = '#E7586A';
  const DARK_RED = '#CC4F5E';

  const BLACK      = '#272933';
  const DARK_BLACK = '#24252E';

  const CENTER_ORNAMENT = 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjcycHgiIGhlaWdodD0iNzJweCIgdmlld0JveD0iMCAwIDcyIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA0MiAoMzY3ODEpIC0gaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoIC0tPgogICAgPHRpdGxlPldoZWVsIGhhbmRsZTwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPgogICAgICAgIDxwYXRoIGQ9Ik0zOC4xMzgxMjA1LDcuMzgxMjA1MzkgTDM5Ljg1NjQxMzgsMjQuNTY0MTM4MiBDNDMuMjUyMjg3OSwyNS43MDMwNjM2IDQ2LjA0NzM1NTcsMjguNDgyNDUxOCA0Ny4yOTYzMDMzLDMyLjEyOTYyOTYgTDY0LjYxODc5NDYsMzMuODYxODc5NSBDNjUuMzI3ODk2MiwzMi43NDI4NTggNjYuNTc3MTk2MiwzMiA2OCwzMiBDNzAuMjA5MTM5LDMyIDcyLDMzLjc5MDg2MSA3MiwzNiBDNzIsMzguMjA5MTM5IDcwLjIwOTEzOSw0MCA2OCw0MCBDNjYuNTc3MTk2Miw0MCA2NS4zMjc4OTYyLDM5LjI1NzE0MiA2NC42MTg3OTQ2LDM4LjEzODEyMDUgTDQ3LjQ0MTg1NywzOS44NTU4MTQzIEM0Ni4yNzUxMzgyLDQzLjM5MDk4NjEgNDMuMzkwOTg2MSw0Ni4yNzUxMzgyIDM5Ljg1NTgxNDMsNDcuNDQxODU3IEwzOC4xMzgxMjA1LDY0LjYxODc5NDYgQzM5LjI1NzE0Miw2NS4zMjc4OTYyIDQwLDY2LjU3NzE5NjIgNDAsNjggQzQwLDcwLjIwOTEzOSAzOC4yMDkxMzksNzIgMzYsNzIgQzMzLjc5MDg2MSw3MiAzMiw3MC4yMDkxMzkgMzIsNjggQzMyLDY2LjU3NzE5NjIgMzIuNzQyODU4LDY1LjMyNzg5NjIgMzMuODYxODc5NSw2NC42MTg3OTQ2IEwzMi4xMjk2MzA3LDQ3LjI5NjMwNzEgQzI4LjQ4MjQ1MTgsNDYuMDQ3MzU1NyAyNS43MDMwNjM2LDQzLjI1MjI4NzkgMjQuNTY0MTM4MiwzOS44NTY0MTM4IEw3LjM4MTIwNTM5LDM4LjEzODEyMDUgQzYuNjcyMTAzNzksMzkuMjU3MTQyIDUuNDIyODAzNzksNDAgNCw0MCBDMS43OTA4NjEsNDAgOS40MzU1MzIwMmUtMTUsMzguMjA5MTM5IDkuNTcwODAyNzdlLTE1LDM2IEM5LjcwNjA3MzUyZS0xNSwzMy43OTA4NjEgMS43OTA4NjEsMzIgNCwzMiBDNS40MjI4MDM3OSwzMiA2LjY3MjEwMzc5LDMyLjc0Mjg1OCA3LjM4MTIwNTM5LDMzLjg2MTg3OTUgTDI0LjcxMjI4ODMsMzIuMTI4NzcxMiBDMjUuOTMyMTAwMiwyOC42MzEzOTQgMjguNjMxMzk0LDI1LjkzMjEwMDIgMzIuMTI4NzcxMiwyNC43MTIyODgzIEwzMy44NjE4Nzk1LDcuMzgxMjA1MzkgQzMyLjc0Mjg1OCw2LjY3MjEwMzc5IDMyLDUuNDIyODAzNzkgMzIsNCBDMzIsMS43OTA4NjEgMzMuNzkwODYxLC00LjI2MzI1NjQxZS0xNCAzNiwtNC4yNjMyNTY0MWUtMTQgQzM4LjIwOTEzOSwtNC4yNjMyNTY0MWUtMTQgNDAsMS43OTA4NjEgNDAsNCBDNDAsNS40MjI4MDM3OSAzOS4yNTcxNDIsNi42NzIxMDM3OSAzOC4xMzgxMjA1LDcuMzgxMjA1MzkgWiIgaWQ9InBhdGgtMSI+PC9wYXRoPgogICAgPC9kZWZzPgogICAgPGcgaWQ9IlJvdWxldHRlIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0iR2FtZS0tLVJvdWxldHRlIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNzQyLjAwMDAwMCwgLTIxMC4wMDAwMDApIj4KICAgICAgICAgICAgPGcgaWQ9IlJvdWxldHRlIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMjAuMDAwMDAwLCA5Ni4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJXaGVlbCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNTIyLjAwMDAwMCwgMTQuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgPGcgaWQ9IlRvcCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNTYuMDAwMDAwLCA1Ni4wMDAwMDApIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGcgaWQ9IldoZWVsLWhhbmRsZSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDQuMDAwMDAwLCA0NC4wMDAwMDApIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxnIGlkPSJDb21iaW5lZC1TaGFwZSIgZmlsbD0iI0ZGRDEwMCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjcGF0aC0xIj48L3VzZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dXNlIHhsaW5rOmhyZWY9IiNwYXRoLTEiPjwvdXNlPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbCIgZmlsbD0iI0Q2QTk0OSIgY3g9IjM2IiBjeT0iMzYiIHI9IjciPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbCIgZmlsbD0iI0ZCRDYzRSIgY3g9IjM2IiBjeT0iMzYiIHI9IjIiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4=';

  const FULL_CIRCLE = 2 * Math.PI;

  const _numbers = [
    '0', '32', '15', '19',
    '4', '21', '2', '25',
    '17', '34', '6', '27',
    '13', '36', '11', '30',
    '8', '23', '10', '5',
    '24', '16', '33', '1',
    '20', '14', '31', '9',
    '22', '18', '29', '7',
    '28', '12', '35', '3', '26',
  ];

  const _outerColors = [
    GREEN,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
    RED, BLACK, RED, BLACK,
  ];

  const _innerColors = [
    DARK_GREEN,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
    DARK_RED, DARK_BLACK, DARK_RED, DARK_BLACK,
  ];

  const canvas = _canvas;
  const ctx    = _context;

  const _slotTotal = 37;
  const _arcAngle  = FULL_CIRCLE / _slotTotal;

  let _outerEdge = {
        radius: 0,
      },
      _outerRing = {
        outerRadius: 0,
        innerRadius: 0,
      },
      _innerRing = {
        outerRadius: 0,
        innerRadius: 0,
      },
      _ornament  = {
        x     : 0,
        y     : 0,
        width : 0,
        height: 0,
        img   : null,
      },
      _slotText  = {
        size  : 0,
        radius: 0,
        font  : 'normal 12px sans-serif',
      };

  let _centerX,
      _centerY,
      _startOfTime = 0,
      _worldAngle  = 0;

  let _ball = {
    x         : 0,
    y         : 0,
    radius    : 0,
    vertOffset: 0,
    vertRange : 0,
  };

  let _ballSettings = {
    showBall       : false,
    spinStartTime  : 0,
    spinFinalTime  : 0,
    spinTotalTime  : 0,
    spinElapsedTime: 0,
    startPosition  : 0,
    finalPosition  : 0,
    arcIncrement   : 0,
  };

  function drawFrame() {
    let elapsedTime = Date.now() - _startOfTime;

    _worldAngle = -(2 * Math.PI / 180 / 100) * elapsedTime;

    for (let i = 0; i < _slotTotal; i++) {
      let angle     = _worldAngle + i * _arcAngle,
          _endAngle = angle + _arcAngle;

      ctx.fillStyle = DARK_BLACK;
      ctx.beginPath();
      ctx.arc(_centerX, _centerY, _outerEdge.radius, 0, FULL_CIRCLE, true);
      ctx.arc(_centerX, _centerY, _outerRing.outerRadius, 0, FULL_CIRCLE,
          false);
      ctx.fill();

      ctx.fillStyle = _outerColors[i];
      ctx.beginPath();
      ctx.arc(_centerX, _centerY, _outerRing.outerRadius, angle, _endAngle,
          false);
      ctx.arc(_centerX, _centerY, _outerRing.innerRadius, _endAngle, angle,
          true);
      ctx.fill();

      ctx.fillStyle = _innerColors[i];
      ctx.beginPath();
      ctx.arc(_centerX, _centerY, _innerRing.outerRadius, angle,
          _endAngle, false);
      ctx.arc(_centerX, _centerY, _innerRing.innerRadius, _endAngle,
          angle, true);
      ctx.fill();

      ctx.fillStyle = DARK_BLACK;
      ctx.beginPath();
      ctx.arc(_centerX, _centerY, _innerRing.innerRadius, 0, FULL_CIRCLE, true);
      ctx.arc(_centerX, _centerY, 0, 0, FULL_CIRCLE, false);
      ctx.fill();

      ctx.save();
      ctx.font      = _slotText.font;
      ctx.lineWidth = 2;
      ctx.fillStyle = '#ffffff';
      ctx.translate(
          _centerX + Math.cos(angle + _arcAngle / 2) * _slotText.radius,
          _centerY + Math.sin(angle + _arcAngle / 2) * _slotText.radius,
      );

      ctx.rotate(angle + _arcAngle / 2 + Math.PI / 2);

      ctx.fillText(_numbers[i], -ctx.measureText(_numbers[i]).width / 2, 0);
      ctx.restore();
    }

    ctx.save();
    ctx.translate(_centerX, _centerY);
    ctx.rotate(_worldAngle);

    ctx.drawImage(_ornament.img, _ornament.x, _ornament.y, _ornament.width,
        _ornament.height);
    ctx.closePath();

    ctx.restore();

    if (_ballSettings.showBall) {
      ctx.save();
      ctx.translate(_centerX, _centerY);

      _ballSettings.spinTimeElapsed = Date.now() - _ballSettings.spinStartTime;

      let f = _ballSettings.spinTimeElapsed /
              _ballSettings.spinTotalTime;

      f = f > 1 ? 1 : f;

      ctx.rotate((_worldAngle + _ballSettings.finalPosition) * f);

      ctx.beginPath();
      ctx.fillStyle = '#ffffff';

      let vertDeceleration,
          g = _ballSettings.spinTimeElapsed /
              (_ballSettings.spinTotalTime);

      // g = easeOutQuad(_ballSettings.spinTimeElapsed, 0, 2 * Math.PI/_ballSettings.spinTotalTime, _ballSettings.spinTotalTime);

      g = g > 1 ? 1 : g;
      if (g < 0.1) {
        vertDeceleration = 1;
      } else {
        vertDeceleration = (1 - g) * Math.abs(Math.sin(10 * g * g * _worldAngle));
      }

      let x = _ball.vertOffset +
              _ball.vertRange *
              vertDeceleration;

      ctx.arc(x, 0, _ball.radius, 0, FULL_CIRCLE);
      ctx.fill();

      ctx.restore();
    }

    requestAnimationFrame(drawFrame);
  }

  function findIndexOfSlot(num) {
    let slotNum = _numbers.indexOf(`${num}`);

    if (slotNum < 0) {
      return false;
    }

    console.log('Slot Number: ' + slotNum);
    console.log('Slot Position: ' + _arcAngle * (slotNum + 0.5));

    return {
      index   : slotNum,
      position: _arcAngle * (slotNum + 0.5),
    };
  }

  function initBallSpin() {
    _ballSettings.spinTotalTime = randomBetween(12, 18, false) * 1000;
    _ballSettings.spinStartTime = Date.now();
    _ballSettings.spinFinalTime = _ballSettings.spinStartTime +
                                  _ballSettings.spinTotalTime;
  }

  this.dropBall = function(num) {
    let slot = findIndexOfSlot(num);

    if (slot === false) {
      _ballSettings.showBall = false;
      return;
    }

    initBallSpin();

    _ballSettings.finalPosition = randomBetween(5, 10) * 2 * Math.PI +
                                  +slot.position;

    _ballSettings.startPosition = _worldAngle;
    _ballSettings.arcIncrement  = (_ballSettings.finalPosition -
                                   _ballSettings.startPosition) /
                                  _ballSettings.spinTotalTime;

    console.log(_ballSettings);

    return;

    _ballSettings.showBall = true;
  };

  this.removeBall = function() {
    _ballSettings.showBall = false;
  };

  this.putBallAtSlot = function(num) {
    let slot = findIndexOfSlot(num);

    if (slot === false) {
      _ballSettings.showBall = false;
      return;
    }

    initBallSpin();

    _ballSettings.finalPosition = randomBetween(5, 10) * 2 * Math.PI +
                                  slot.position;

    _ballSettings.startPosition = _worldAngle;
    _ballSettings.arcIncrement  = (_ballSettings.finalPosition -
                                   _ballSettings.startPosition) /
                                  _ballSettings.spinTotalTime;

    _ballSettings.showBall = true;
  };

  this.init = function() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    _worldAngle = 0;

    _centerX = canvas.width / 2;
    _centerY = canvas.height / 2;

    _outerEdge.radius = canvas.width / 2;

    _outerRing.outerRadius = canvas.width * 0.9 / 2;
    _outerRing.innerRadius = canvas.width * 0.75 / 2;

    _innerRing.outerRadius = _outerRing.innerRadius;
    _innerRing.innerRadius = _innerRing.outerRadius * 0.8;

    _slotText.radius = _outerRing.innerRadius +
                       (_outerRing.outerRadius - _outerRing.innerRadius) * 0.35;
    _slotText.size   = (_outerRing.outerRadius - _outerRing.innerRadius) * 0.5;

    _slotText.font = `normal ${_slotText.size}px sans-serif`;

    _ornament.img     = new Image();
    _ornament.img.src = CENTER_ORNAMENT;

    _ornament.x     = _ornament.y = -_innerRing.innerRadius / 2;
    _ornament.width = _ornament.height = _innerRing.innerRadius;

    _ball.radius     = ((canvas.width / 2 - _outerRing.outerRadius) / 2) * 0.9;
    _ball.vertOffset = _innerRing.innerRadius + _ball.radius;
    _ball.vertRange  = (_outerRing.outerRadius - _innerRing.innerRadius);

    _startOfTime = Date.now();
    requestAnimationFrame(drawFrame);
  };
}

const canvas = document.getElementById('roulette-wheel');
const ctx    = canvas.getContext('2d');

let roulette = new Roulette(canvas, ctx);
roulette.init();

document.getElementById("drop-form").
  addEventListener("submit", function(e) {

  let slot = document.getElementById("drop-input")
          .value;

  roulette.putBallAtSlot(slot);

  e.preventDefault();
});
