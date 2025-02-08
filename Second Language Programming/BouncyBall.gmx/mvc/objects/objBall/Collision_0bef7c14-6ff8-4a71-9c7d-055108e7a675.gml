if (other.sprite_index == sprPaddleLeft) {
    if (direction == 0) {
        direction = 90
        x += 32
        y -= 32
    }
    else if (direction == 90) {
        direction = 0
        x += 32
        y -= 32
    }
    else if (direction == 180) {
        direction = 270
        x -= 32
        y += 32
    }
    else {
        direction = 180
        x -= 32
        y += 32
    }
} else if (other.sprite_index == sprPaddleRight) {
    switch (direction) {
        case 0:
            direction = 270
            x += 32
            y += 32
            break;
            
        case 90:
            direction = 180
            x -= 32
            y -= 32
            break;
            
        case 180:
            direction = 90
            x -= 32
            y -= 32
            break;
            
        case 270:
            direction = 0
            x += 32
            y += 32
            break;
    }
}

action_snap(32, 32);
