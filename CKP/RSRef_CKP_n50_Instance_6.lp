\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x3 - x5 - x7 - x8 - x15 - x16 - x27 - x28 - x29 - x32 - x33 - x34
       - x35 - x41 + x49 <= 1
 c2:   x3 + x5 + x7 + x8 + x15 + x16 + x27 + x28 + x29 + x32 + x33 + x34 + x35
       + x41 - x49 <= 0
 c3:   x8 - x23 - x24 - x25 - x26 - x30 - x31 - x38 - x39 - x40 - x41 - x42
       + x43 + x44 + x45 + x46 + x47 - x50 <= 1
 c4:   x1 + x3 - x8 - x11 - x19 - x20 - x25 - x26 - x27 - x28 - x29 - x32 - x33
       - x34 - x35 - x36 - x37 - x38 - x40 - x42 + x44 + x45 <= 1
 c5:   x2 - x3 + x10 + x11 - x17 - x18 + x25 + x26 - x30 + x40 + x43 + x46
       + x47 - x48 + x50 <= 1
 c6:   x4 + x5 - x10 - x12 - x13 - x21 - x22 + x48 <= 0
 c7:   - x5 + x7 <= 1
 c8:   x6 - x7 - x10 + x12 + x13 + x17 + x18 + x19 + x20 + x21 + x22 + x23
       + x24 + x30 + x31 + x39 - x49 <= 1
 c9:   x9 + x10 + x11 + x12 + x13 + x25 + x26 + x27 - x45 - x46 + x49 - x50
       <= 0
 c10:  - x11 + x48 <= 1
 c11:  - x12 + x28 + x29 - x47 + x48 - x49 + x50 <= 0
 c12:  x14 + x15 + x17 + x18 + x19 + x20 + x21 + x23 + x24 + x25 + x27 + x28
       + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40
       + x42 + x49 - x50 <= 1
 c13:  - x15 <= 1
 c14:  - x21 + x50 <= 1
 c15:  - x17 + x34 + x35 + x38 + x39 <= 0
 c16:  - x19 + x42 <= 1
 c17:  - x23 + x50 <= 0
 c18:  - x27 <= 0
 c19:  - x25 <= 0
 c20:  - x28 + x48 - x49 + x50 <= 0
 c21:  - x36 + x49 <= 0
 c22:  - x32 - x48 <= 0
 c23:  - x40 + x50 <= 0
 c24:  - x34 + x49 <= 0
 c25:  - x30 + x49 + x50 <= 0
 c26:  - x1 + x44 + x45 + x46 + x47 - x50 <= 1
 c27:  - x2 - x31 - x39 <= 0
 c28:  - x4 + x43 + x45 + x46 + x47 + x48 - x50 <= 1
 c29:  - x6 + x38 + x42 + x50 <= 1
 c30:  - x9 + x48 <= 1
 c31:  - x13 + x48 - x49 + x50 <= 0
 c32:  - x14 + x16 + x22 + x26 + x41 - x43 - x44 - x45 - x46 - x47 - x48 + x49
       - x50 <= 0
 c33:  - x16 + x30 + x31 + x32 + x33 + x36 + x37 + x40 + x41 <= 1
 c34:  - x22 <= 1
 c35:  - x18 + x49 <= 1
 c36:  - x20 <= 0
 c37:  - x24 + x50 <= 0
 c38:  - x26 + x48 + x50 <= 0
 c39:  - x29 + x50 <= 0
 c40:  - x37 + x49 <= 0
 c41:  - x33 - x48 + x49 <= 0
 c42:  - x41 + x50 <= 0
 c43:  - x35 + x49 <= 0
 c44:  - x31 <= 0
 c45:  - x39 + x49 <= 0
 c46:  - x38 + x50 <= 0
 c47:  - x42 + x50 <= 0
 c48:  - x47 - 2 x50 <= 2
 c49:  - x45 - x48 - x49 - x50 <= 1
 c50:  - x46 - x48 - x49 <= 1
 c51:  - x44 - x49 - x50 <= 1
 c52:  - x43 - x49 - x50 <= 1
 c53:  - x8 + x23 + x24 + x25 + x26 + x30 + x31 + x38 + x39 + x40 + x41 + x42
       - x43 - x44 - x45 - x46 - x47 + x50 <= 0
 c54:  - x1 - x3 + x8 + x11 + x19 + x20 + x25 + x26 + x27 + x28 + x29 + x32
       + x33 + x34 + x35 + x36 + x37 + x38 + x40 + x42 - x44 - x45 <= 0
 c55:  - x2 + x3 - x10 - x11 + x17 + x18 - x25 - x26 + x30 - x40 - x43 - x46
       - x47 + x48 - x50 <= 0
 c56:  - x4 - x5 + x10 + x12 + x13 + x21 + x22 - x48 <= 1
 c57:  x5 - x7 <= 0
 c58:  - x6 + x7 + x10 - x12 - x13 - x17 - x18 - x19 - x20 - x21 - x22 - x23
       - x24 - x30 - x31 - x39 + x49 <= 0
 c59:  - x9 - x10 - x11 - x12 - x13 - x25 - x26 - x27 + x45 + x46 - x49 + x50
       <= 1
 c60:  x11 - x48 <= 0
 c61:  x12 - x28 - x29 + x47 - x48 + x49 - x50 <= 1
 c62:  - x14 - x15 - x17 - x18 - x19 - x20 - x21 - x23 - x24 - x25 - x27 - x28
       - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36 - x37 - x38 - x39 - x40
       - x42 - x49 + x50 <= 0
 c63:  x15 <= 0
 c64:  x21 - x50 <= 0
 c65:  x17 - x34 - x35 - x38 - x39 <= 1
 c66:  x19 - x42 <= 0
 c67:  x23 - x50 <= 1
 c68:  x27 <= 1
 c69:  x25 <= 1
 c70:  x28 - x48 + x49 - x50 <= 1
 c71:  x36 - x49 <= 1
 c72:  x32 + x48 <= 1
 c73:  x40 - x50 <= 1
 c74:  x34 - x49 <= 1
 c75:  x30 - x49 - x50 <= 1
 c76:  x1 - x44 - x45 - x46 - x47 + x50 <= 0
 c77:  x2 + x31 + x39 <= 1
 c78:  x4 - x43 - x45 - x46 - x47 - x48 + x50 <= 0
 c79:  x6 - x38 - x42 - x50 <= 0
 c80:  x9 - x48 <= 0
 c81:  x13 - x48 + x49 - x50 <= 1
 c82:  x14 - x16 - x22 - x26 - x41 + x43 + x44 + x45 + x46 + x47 + x48 - x49
       + x50 <= 1
 c83:  x16 - x30 - x31 - x32 - x33 - x36 - x37 - x40 - x41 <= 0
 c84:  x22 <= 0
 c85:  x18 - x49 <= 0
 c86:  x20 <= 1
 c87:  x24 - x50 <= 1
 c88:  x26 - x48 - x50 <= 1
 c89:  x29 - x50 <= 1
 c90:  x37 - x49 <= 1
 c91:  x33 + x48 - x49 <= 1
 c92:  x41 - x50 <= 1
 c93:  x35 - x49 <= 1
 c94:  x31 <= 1
 c95:  x39 - x49 <= 1
 c96:  x38 - x50 <= 1
 c97:  x42 - x50 <= 1
 c98:  x47 + 2 x50 <= -1
 c99:  x45 + x48 + x49 + x50 <= 0
 c100: x46 + x48 + x49 <= 0
 c101: x44 + x49 + x50 <= 0
 c102: x43 + x49 + x50 <= 0
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
