// this signal uses the mouseX and mouseY position to build a signal
class MakeSound implements AudioSignal
{
  void generate(float[] samp)
  {
    float range = 3;
    float peaks = 3;
    float inter = 2000;
    for ( int i = 0; i < samp.length; i += inter )
    {
      for ( int j = 0; j < inter && (i+j) < samp.length; j++ )
      {
        samp[i + j] = map(j, 0, inter, -range, range);
      }
    }
  }
  
  // this is a stricly mono signal
  void generate(float[] left, float[] right)
  {
    generate(left);
    generate(right);
  }
}

