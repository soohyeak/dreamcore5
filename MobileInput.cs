using UnityEngine;
public static class MobileInput {
#if UNITY_STANDALONE || UNITY_EDITOR
  public static Vector2 GetMove(){ return new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical")); }
#else
  public static Vector2 GetMove(){ return Vector2.zero; }
#endif
}
