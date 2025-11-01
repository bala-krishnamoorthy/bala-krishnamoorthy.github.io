\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x5 - x6 - x7 - x11 - x12 - x13 - x29 + x48 + x49 <= 1
 c2:   x5 + x6 + x7 + x11 + x12 + x13 + x29 - x48 - x49 <= 0
 c3:   x1 + x6 - x8 - x10 - x17 - x18 - x19 - x23 - x24 - x32 - x33 - x38 - x39
       + x46 - x50 <= 1
 c4:   - x6 + x7 - x40 + x41 + x44 + x45 - x50 <= 0
 c5:   x2 - x7 + x8 - x20 + x25 + x26 + x32 + x33 + x42 + x43 + x44 + x45 + x46
       + x47 - x48 - x49 <= 1
 c6:   x3 + x5 + x8 + x10 + x15 + x18 + x19 - x21 - x22 - x27 - x28 - x29 - x30
       - x31 - x39 + x48 + x49 - x50 <= 0
 c7:   x4 - x5 + x10 - x15 - x16 + x17 + x20 + x21 + x23 + x24 - x25 - x26
       + x30 + x31 - x34 - x35 + x39 + x41 + x44 + x48 <= 1
 c8:   - x8 <= 0
 c9:   x11 + x48 <= 0
 c10:  x9 - x10 - x11 + x12 + x13 - x30 - x31 - x32 - x33 - x36 - x37 - x43
       + x50 <= 0
 c11:  - x12 + x48 - x49 + x50 <= -1
 c12:  x17 + x49 <= 1
 c13:  x18 <= 1
 c14:  - x25 <= 0
 c15:  - x15 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
       + x38 + x39 <= 1
 c16:  x14 + x15 + x16 - x17 - x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x36 + x37 - x41 - x42 - x44 - x45 - x46 - x47 <= 1
 c17:  - x21 + x50 <= 0
 c18:  - x20 + x48 <= 0
 c19:  - x19 + x48 + x50 <= 0
 c20:  - x23 + x50 <= 0
 c21:  - x36 + x49 <= 1
 c22:  - x30 - x48 + x49 <= 1
 c23:  - x33 - x48 + x50 <= 1
 c24:  - x34 + x49 <= 1
 c25:  - x27 + x49 <= 0
 c26:  - x1 + x42 + x43 + x45 + x46 + x47 <= 1
 c27:  - x2 + x47 - x49 <= 0
 c28:  - x3 + x16 + x41 + x42 + x43 <= 1
 c29:  - x4 + x22 <= 0
 c30:  - x9 + x48 <= 0
 c31:  - x13 + x48 - x49 + x50 <= 0
 c32:  - x26 - x48 <= 0
 c33:  - x16 + x40 + x49 <= 1
 c34:  - x14 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x38 + x39
       + x40 <= 0
 c35:  - x22 - x49 + x50 <= 0
 c36:  - x24 + x50 <= 0
 c37:  - x37 + x49 <= 1
 c38:  - x31 + x49 <= 1
 c39:  - x32 - x48 + x50 <= 1
 c40:  - x35 + x49 <= 1
 c41:  - x28 + x50 <= 0
 c42:  - x29 + x50 <= 0
 c43:  - x40 + x48 + x49 <= 1
 c44:  - x38 + x49 + x50 <= 0
 c45:  - x39 + x50 <= 0
 c46:  - x46 - x50 <= 1
 c47:  - x45 - x48 - x49 - x50 <= 1
 c48:  - x47 - x48 - x49 - x50 <= 1
 c49:  - x42 - x50 <= 1
 c50:  - x44 - x49 <= 0
 c51:  - x41 - x49 - x50 <= 0
 c52:  - x43 - x50 <= 1
 c53:  - x1 - x6 + x8 + x10 + x17 + x18 + x19 + x23 + x24 + x32 + x33 + x38
       + x39 - x46 + x50 <= 0
 c54:  x6 - x7 + x40 - x41 - x44 - x45 + x50 <= 1
 c55:  - x2 + x7 - x8 + x20 - x25 - x26 - x32 - x33 - x42 - x43 - x44 - x45
       - x46 - x47 + x48 + x49 <= 0
 c56:  - x3 - x5 - x8 - x10 - x15 - x18 - x19 + x21 + x22 + x27 + x28 + x29
       + x30 + x31 + x39 - x48 - x49 + x50 <= 1
 c57:  - x4 + x5 - x10 + x15 + x16 - x17 - x20 - x21 - x23 - x24 + x25 + x26
       - x30 - x31 + x34 + x35 - x39 - x41 - x44 - x48 <= 0
 c58:  x8 <= 1
 c59:  - x11 - x48 <= 1
 c60:  - x9 + x10 + x11 - x12 - x13 + x30 + x31 + x32 + x33 + x36 + x37 + x43
       - x50 <= 1
 c61:  x12 - x48 + x49 - x50 <= 2
 c62:  - x17 - x49 <= 0
 c63:  - x18 <= 0
 c64:  x25 <= 1
 c65:  x15 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36 - x37
       - x38 - x39 <= 0
 c66:  - x14 - x15 - x16 + x17 + x18 - x19 - x20 - x21 - x22 - x23 - x24 - x25
       - x26 - x36 - x37 + x41 + x42 + x44 + x45 + x46 + x47 <= 0
 c67:  x21 - x50 <= 1
 c68:  x20 - x48 <= 1
 c69:  x19 - x48 - x50 <= 1
 c70:  x23 - x50 <= 1
 c71:  x36 - x49 <= 0
 c72:  x30 + x48 - x49 <= 0
 c73:  x33 + x48 - x50 <= 0
 c74:  x34 - x49 <= 0
 c75:  x27 - x49 <= 1
 c76:  x1 - x42 - x43 - x45 - x46 - x47 <= 0
 c77:  x2 - x47 + x49 <= 1
 c78:  x3 - x16 - x41 - x42 - x43 <= 0
 c79:  x4 - x22 <= 1
 c80:  x9 - x48 <= 1
 c81:  x13 - x48 + x49 - x50 <= 1
 c82:  x26 + x48 <= 1
 c83:  x16 - x40 - x49 <= 0
 c84:  x14 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x38 - x39
       - x40 <= 1
 c85:  x22 + x49 - x50 <= 1
 c86:  x24 - x50 <= 1
 c87:  x37 - x49 <= 0
 c88:  x31 - x49 <= 0
 c89:  x32 + x48 - x50 <= 0
 c90:  x35 - x49 <= 0
 c91:  x28 - x50 <= 1
 c92:  x29 - x50 <= 1
 c93:  x40 - x48 - x49 <= 0
 c94:  x38 - x49 - x50 <= 1
 c95:  x39 - x50 <= 1
 c96:  x46 + x50 <= 0
 c97:  x45 + x48 + x49 + x50 <= 0
 c98:  x47 + x48 + x49 + x50 <= 0
 c99:  x42 + x50 <= 0
 c100: x44 + x49 <= 1
 c101: x41 + x49 + x50 <= 1
 c102: x43 + x50 <= 0
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
