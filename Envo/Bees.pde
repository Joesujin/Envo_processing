class Bees
{
  PVector location;
  PVector velocity;
  PVector accleration;

  Bees()
  {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2), random(2));
    accleration = new PVector(random(1), random(1));
  }

  void update()
  {
    location.add(velocity);
    velocity.add(accleration);
    velocity.limit(2);
  }

  void move()
  {
    accleration.x = random(0.3);
    accleration.y = random(0.3);
  }

  void check()
  {
    if (location.x > width)
      location.x = 0;
    else if (location.x < 0)
      location.x = width;

    if (location.y > height)
      location.y = 0;
    else if (location.y < 0)
      location.y = height;
  }

  void display()
  {
    ellipse(location.x, location.y, 10, 10);
        ellipse(location.x+5, location.y+5, 8, 8);

  }
  
  void trail()
  {
    stroke(255,100);
    line(0,0,location.x,location.y);
    
  }
}
