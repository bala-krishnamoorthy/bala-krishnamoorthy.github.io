\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x3 - x5 - x7 - x8 - x9 - x12 - x15 - x16 - x27 - x28 - x38 - x39 - x50
       <= 0
 c2:   x3 + x5 + x7 + x8 + x9 + x12 + x15 + x16 + x27 + x28 + x38 + x39 + x50
       <= 1
 c3:   x1 + x3 - x19 - x20 - x21 - x22 - x23 - x24 - x27 - x28 - x29 - x30
       - x31 - x32 - x33 - x34 - x35 - x37 - x38 - x39 - x40 + x44 + x45 + x46
       - x50 <= 0
 c4:   x2 - x3 + x5 - x11 - x13 - x17 - x18 - x25 - x26 - x29 - x30 - x33 - x36
       - x37 - x40 + x41 + x42 - x49 <= 1
 c5:   x4 - x5 - x10 + x21 + x43 + x44 + x45 + x46 + x47 - x48 + x50 <= 1
 c6:   x7 + x42 + x49 <= 1
 c7:   x6 - x7 + x8 + x10 + x11 + x17 + x18 + x19 + x20 + x29 + x30 + x41 + x45
       + x48 <= 2
 c8:   - x8 + x10 + x11 + x22 + x23 + x33 + x37 + x40 - x46 + x48 - x49 <= 1
 c9:   x12 + x48 - x50 <= 1
 c10:  - x10 - x12 + x13 + x24 + x25 + x26 + x27 + x28 - x45 - x47 <= 1
 c11:  - x11 + x48 - x49 <= 1
 c12:  x14 + x15 + x17 + x19 + x21 + x22 + x24 + x25 + x27 + x29 + x30 + x31
       + x32 + x33 + x34 + x36 + x37 + x38 + x40 - x48 <= 1
 c13:  - x15 <= 0
 c14:  - x21 + x50 <= 0
 c15:  - x17 + x31 + x32 + x33 + x49 <= 0
 c16:  - x19 + x40 <= 0
 c17:  - x22 - x49 + x50 <= 0
 c18:  - x25 + x48 + x49 - x50 <= 1
 c19:  - x24 <= 0
 c20:  - x27 + x50 <= 0
 c21:  - x36 - x48 + x49 <= 0
 c22:  - x34 + x49 + x50 <= 0
 c23:  - x38 + x50 <= 0
 c24:  - x31 + x49 <= 0
 c25:  - x29 + x49 + x50 <= 0
 c26:  - x1 + x13 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x49 <= 1
 c27:  - x2 + x43 + x46 + x47 <= 0
 c28:  - x4 - x49 <= 0
 c29:  - x6 + x9 - x44 + x47 <= 1
 c30:  - x9 - x49 + x50 <= 1
 c31:  - x13 + x48 - x50 <= 1
 c32:  - x14 + x16 + x18 + x20 + x23 + x26 + x28 + x35 + x39 - x41 - x42 - x43
       - x45 - x46 - x47 + x49 - x50 <= 0
 c33:  - x16 + x29 + x30 + x34 + x35 + x36 + x37 + x38 + x39 <= 0
 c34:  - x18 <= 1
 c35:  - x20 <= 0
 c36:  - x23 + x50 <= 0
 c37:  - x26 + x48 - x50 <= 0
 c38:  - x28 + x48 + x50 <= 0
 c39:  - x35 - x48 + x49 + x50 <= 0
 c40:  - x39 + x50 <= 0
 c41:  - x32 + x49 <= 0
 c42:  - x30 + x49 + x50 <= -1
 c43:  - x37 + x50 <= 0
 c44:  - x33 + x49 <= 0
 c45:  - x40 + x50 <= 0
 c46:  - x46 - x50 <= 1
 c47:  - x45 - x48 - x49 - x50 <= 1
 c48:  - x47 - x48 - x49 <= 1
 c49:  - x43 - x49 <= 1
 c50:  - x42 - x50 <= 1
 c51:  - x41 + x48 - x49 - x50 <= 1
 c52:  - x44 - x48 - x50 <= 1
 c53:  - x1 - x3 + x19 + x20 + x21 + x22 + x23 + x24 + x27 + x28 + x29 + x30
       + x31 + x32 + x33 + x34 + x35 + x37 + x38 + x39 + x40 - x44 - x45 - x46
       + x50 <= 1
 c54:  - x2 + x3 - x5 + x11 + x13 + x17 + x18 + x25 + x26 + x29 + x30 + x33
       + x36 + x37 + x40 - x41 - x42 + x49 <= 0
 c55:  - x4 + x5 + x10 - x21 - x43 - x44 - x45 - x46 - x47 + x48 - x50 <= 0
 c56:  - x7 - x42 - x49 <= 0
 c57:  - x6 + x7 - x8 - x10 - x11 - x17 - x18 - x19 - x20 - x29 - x30 - x41
       - x45 - x48 <= -1
 c58:  x8 - x10 - x11 - x22 - x23 - x33 - x37 - x40 + x46 - x48 + x49 <= 0
 c59:  - x12 - x48 + x50 <= 0
 c60:  x10 + x12 - x13 - x24 - x25 - x26 - x27 - x28 + x45 + x47 <= 0
 c61:  x11 - x48 + x49 <= 0
 c62:  - x14 - x15 - x17 - x19 - x21 - x22 - x24 - x25 - x27 - x29 - x30 - x31
       - x32 - x33 - x34 - x36 - x37 - x38 - x40 + x48 <= 0
 c63:  x15 <= 1
 c64:  x21 - x50 <= 1
 c65:  x17 - x31 - x32 - x33 - x49 <= 1
 c66:  x19 - x40 <= 1
 c67:  x22 + x49 - x50 <= 1
 c68:  x25 - x48 - x49 + x50 <= 0
 c69:  x24 <= 1
 c70:  x27 - x50 <= 1
 c71:  x36 + x48 - x49 <= 1
 c72:  x34 - x49 - x50 <= 1
 c73:  x38 - x50 <= 1
 c74:  x31 - x49 <= 1
 c75:  x29 - x49 - x50 <= 1
 c76:  x1 - x13 - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x49 <= 0
 c77:  x2 - x43 - x46 - x47 <= 1
 c78:  x4 + x49 <= 1
 c79:  x6 - x9 + x44 - x47 <= 0
 c80:  x9 + x49 - x50 <= 0
 c81:  x13 - x48 + x50 <= 0
 c82:  x14 - x16 - x18 - x20 - x23 - x26 - x28 - x35 - x39 + x41 + x42 + x43
       + x45 + x46 + x47 - x49 + x50 <= 1
 c83:  x16 - x29 - x30 - x34 - x35 - x36 - x37 - x38 - x39 <= 1
 c84:  x18 <= 0
 c85:  x20 <= 1
 c86:  x23 - x50 <= 1
 c87:  x26 - x48 + x50 <= 1
 c88:  x28 - x48 - x50 <= 1
 c89:  x35 + x48 - x49 - x50 <= 1
 c90:  x39 - x50 <= 1
 c91:  x32 - x49 <= 1
 c92:  x30 - x49 - x50 <= 2
 c93:  x37 - x50 <= 1
 c94:  x33 - x49 <= 1
 c95:  x40 - x50 <= 1
 c96:  x46 + x50 <= 0
 c97:  x45 + x48 + x49 + x50 <= 0
 c98:  x47 + x48 + x49 <= 0
 c99:  x43 + x49 <= 0
 c100: x42 + x50 <= 0
 c101: x41 - x48 + x49 + x50 <= 0
 c102: x44 + x48 + x50 <= 0
Bounds
      x1 Free
      x2 Free
      x3 Free
      x4 Free
      x5 Free
      x6 Free
      x7 Free
      x8 Free
      x9 Free
      x10 Free
      x11 Free
      x12 Free
      x13 Free
      x14 Free
      x15 Free
      x16 Free
      x17 Free
      x18 Free
      x19 Free
      x20 Free
      x21 Free
      x22 Free
      x23 Free
      x24 Free
      x25 Free
      x26 Free
      x27 Free
      x28 Free
      x29 Free
      x30 Free
      x31 Free
      x32 Free
      x33 Free
      x34 Free
      x35 Free
      x36 Free
      x37 Free
      x38 Free
      x39 Free
      x40 Free
      x41 Free
      x42 Free
      x43 Free
      x44 Free
      x45 Free
      x46 Free
      x47 Free
      x48 Free
      x49 Free
      x50 Free
Generals
 x1  x2  x3  x4  x5  x6  x7  x8  x9  x10  x11  x12  x13  x14  x15  x16  x17 
 x18  x19  x20  x21  x22  x23  x24  x25  x26  x27  x28  x29  x30  x31  x32 
 x33  x34  x35  x36  x37  x38  x39  x40  x41  x42  x43  x44  x45  x46  x47 
 x48  x49  x50 
End
