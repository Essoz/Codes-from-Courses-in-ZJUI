class Settings():
    """all settings for 'Alien_invasion' contained here"""

    def __init__(self):

        self.screen_width = 1200
        self.screen_height = 800
        self.bg_color = (230, 230, 230)

        #velocity of moving horizontally
        self.ship_speed_factor_horizontal = 4
        #velocity of moving vertically
        self.ship_speed_factor_vertical = 2
        self.alien_speed_factor = 1
        self.fleet_drop_speed = 10
        # 1 represents going right while 0 represents going left
        self.fleet_direction = 1

        #bullets
        self.bullet_speed_factor = 10
        self.bullet_width = 3
        self.bullet_height = 15
        self.bullet_color = 60, 60, 60
        self.bullets_allowed = 3