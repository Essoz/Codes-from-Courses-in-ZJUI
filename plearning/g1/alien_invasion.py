import pygame
from ship import Ship
from settings import Settings
import game_functions as gf
from pygame.sprite import Group


def run_game():
    #initiate the game and create a screen object
    pygame.init()

    ai_settings = Settings()
    screen = pygame.display.set_mode((ai_settings.screen_width, ai_settings.screen_height))
    pygame.display.set_caption("Alien Invasion")

    #initiate a ship
    ship = Ship(ai_settings, screen)

    # alien = Alien(ai_settings, screen)
    #initiate an array for storing bullets
    bullets = Group()
    aliens = Group()

    gf.create_fleet(ai_settings, screen, ship, aliens)
    # bg_color = (230, 230, 230)
    #the main loop
    while True:
        gf.check_events(ai_settings, screen, ship, bullets)
        ship.update()
        gf.update_bullets(aliens, bullets)
        gf.update_aliens(ai_settings, aliens)
        gf.update_screen(ai_settings, screen, ship, aliens, bullets)


run_game()