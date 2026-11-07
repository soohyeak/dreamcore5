using UnityEngine;
[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour {
  public float moveSpeed = 4.5f; public float gravity = -9.81f; public bool CanMove = true; private CharacterController cc; private Vector3 velocity;
  void Start(){ cc = GetComponent<CharacterController>(); }
  void Update(){ if(!CanMove) return; Vector2 input = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical")); Vector3 move = (transform.forward*input.y + transform.right*input.x).normalized * moveSpeed; velocity.y += gravity*Time.deltaTime; cc.Move((move + new Vector3(0, velocity.y, 0))*Time.deltaTime); }
  public void SetMoveEnabled(bool enabled){ CanMove = enabled; }
}
