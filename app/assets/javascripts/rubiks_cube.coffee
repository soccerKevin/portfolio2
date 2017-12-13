$ ->
  $('.wrap.rubiks').on 'mousemove', (e)->
    $('.rubiks.cube.spin').removeClass 'start_position'
    $elem = $(@)
    x = $elem.offset().left + $elem.width() / 2
    y = $elem.offset().top + $elem.height() / 2
    center = left: x, top: y
    mouse = left: e.clientX, top: e.clientY + $(window).scrollTop()

    angle = {}
    left = mouse.left - center.left
    top  = center.top - mouse.top

    angle.left = if left >= 0 then left else 360 + left
    angle.top  = if top >= 0  then top  else 360 + top

    $('.rubiks.cube.spin').css 'transform', """
      rotateX(#{angle.top}deg)
      rotateY(#{angle.left}deg)
      rotateZ(0deg)
    """

  $('.wrap.rubiks').on 'mouseout', (e)->
    $('.rubiks.cube.spin').addClass 'start_position'
