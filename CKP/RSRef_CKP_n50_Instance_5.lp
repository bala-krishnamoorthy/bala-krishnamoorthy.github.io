\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x15 - x16 - x21 - x22 - x24 - x25
       - x28 - x29 - x30 - x31 - x37 <= 1
 c2:   x4 + x5 + x6 + x7 + x8 + x9 + x10 + x15 + x16 + x21 + x22 + x24 + x25
       + x28 + x29 + x30 + x31 + x37 <= 0
 c3:   x5 - x19 - x20 - x23 - x28 - x29 - x30 - x31 - x33 - x34 - x35 - x36
       - x37 - x39 + x40 + x41 + x43 + x44 + x45 + x46 + x47 <= 1
 c4:   x1 - x5 + x6 - x9 - x10 + x11 - x12 - x13 - x17 - x18 - x24 - x25 - x26
       - x27 - x32 - x34 - x35 - x38 - x39 + x43 + x45 - x48 - x50 <= 0
 c5:   - x6 + x42 + x46 + x47 - x49 <= 0
 c6:   x2 + x4 + x9 - x11 - x21 - x22 - x32 - x36 + x48 + x49 <= 0
 c7:   x3 - x4 + x7 + x9 + x10 - x11 + x12 + x13 + x17 + x18 + x19 + x20 + x21
       + x22 + x32 + x36 + x39 + x40 + x44 + x48 <= 1
 c8:   - x7 + x13 + x23 + x34 + x35 - x49 + x50 <= 0
 c9:   x11 + x48 <= 0
 c10:  - x9 + x24 + x25 + x26 + x27 + x28 + x29 - x44 - x49 + x50 <= 0
 c11:  - x13 - x46 + x48 - x49 + x50 <= -1
 c12:  x14 + x15 + x17 + x19 + x21 + x23 + x24 + x26 + x28 + x30 + x31 + x32
       + x33 + x34 + x35 + x36 + x37 + x38 + x39 <= 1
 c13:  - x15 <= 1
 c14:  - x21 - x48 <= 1
 c15:  - x17 + x30 + x31 + x33 + x35 + x39 - x45 - x47 + x49 <= 1
 c16:  - x19 + x50 <= 0
 c17:  - x23 + x50 <= 0
 c18:  - x26 + x48 <= 0
 c19:  - x24 + x50 <= 0
 c20:  - x28 + x50 <= 0
 c21:  - x38 + x49 <= 1
 c22:  - x32 + x49 <= 1
 c23:  - x36 - x48 + x50 <= 1
 c24:  - x33 + x49 <= 1
 c25:  - x30 + x49 + x50 <= 1
 c26:  - x1 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 <= 1
 c27:  - x2 + x10 + x12 + x41 + x42 + x43 + x46 - x50 <= 1
 c28:  - x3 + x8 - x43 + x50 <= 0
 c29:  - x8 - x49 <= 0
 c30:  - x12 + x48 <= 0
 c31:  - x10 + x48 + x50 <= 0
 c32:  - x14 + x16 + x18 + x20 + x22 + x25 + x27 + x29 - x40 - x41 - x42 - x43
       - x46 + x49 - x50 <= 1
 c33:  - x16 + x32 + x34 + x36 + x37 + x38 <= 1
 c34:  - x22 - x48 <= 0
 c35:  - x18 + x49 <= 1
 c36:  - x20 <= 0
 c37:  - x27 + x48 + x49 <= 0
 c38:  - x25 + x50 <= 0
 c39:  - x29 + x50 <= 0
 c40:  - x37 - x48 <= 1
 c41:  - x31 + x49 <= 1
 c42:  - x34 + x50 <= 0
 c43:  - x39 + x48 + x49 + x50 <= 0
 c44:  - x35 + x49 + x50 <= 0
 c45:  - x46 - x50 <= 1
 c46:  - x45 - x48 - x49 - x50 <= 1
 c47:  - x47 - x48 - x49 - x50 <= 1
 c48:  - x43 - x50 <= 1
 c49:  - x41 + x48 - x50 <= 1
 c50:  - x40 - x49 - x50 <= 0
 c51:  - x42 - x49 <= 0
 c52:  - x44 - x48 - x50 <= 1
 c53:  - x5 + x19 + x20 + x23 + x28 + x29 + x30 + x31 + x33 + x34 + x35 + x36
       + x37 + x39 - x40 - x41 - x43 - x44 - x45 - x46 - x47 <= 0
 c54:  - x1 + x5 - x6 + x9 + x10 - x11 + x12 + x13 + x17 + x18 + x24 + x25
       + x26 + x27 + x32 + x34 + x35 + x38 + x39 - x43 - x45 + x48 + x50 <= 1
 c55:  x6 - x42 - x46 - x47 + x49 <= 1
 c56:  - x2 - x4 - x9 + x11 + x21 + x22 + x32 + x36 - x48 - x49 <= 1
 c57:  - x3 + x4 - x7 - x9 - x10 + x11 - x12 - x13 - x17 - x18 - x19 - x20
       - x21 - x22 - x32 - x36 - x39 - x40 - x44 - x48 <= 0
 c58:  x7 - x13 - x23 - x34 - x35 + x49 - x50 <= 1
 c59:  - x11 - x48 <= 1
 c60:  x9 - x24 - x25 - x26 - x27 - x28 - x29 + x44 + x49 - x50 <= 1
 c61:  x13 + x46 - x48 + x49 - x50 <= 2
 c62:  - x14 - x15 - x17 - x19 - x21 - x23 - x24 - x26 - x28 - x30 - x31 - x32
       - x33 - x34 - x35 - x36 - x37 - x38 - x39 <= 0
 c63:  x15 <= 0
 c64:  x21 + x48 <= 0
 c65:  x17 - x30 - x31 - x33 - x35 - x39 + x45 + x47 - x49 <= 0
 c66:  x19 - x50 <= 1
 c67:  x23 - x50 <= 1
 c68:  x26 - x48 <= 1
 c69:  x24 - x50 <= 1
 c70:  x28 - x50 <= 1
 c71:  x38 - x49 <= 0
 c72:  x32 - x49 <= 0
 c73:  x36 + x48 - x50 <= 0
 c74:  x33 - x49 <= 0
 c75:  x30 - x49 - x50 <= 0
 c76:  x1 - x40 - x41 - x42 - x43 - x44 - x45 - x46 - x47 <= 0
 c77:  x2 - x10 - x12 - x41 - x42 - x43 - x46 + x50 <= 0
 c78:  x3 - x8 + x43 - x50 <= 1
 c79:  x8 + x49 <= 1
 c80:  x12 - x48 <= 1
 c81:  x10 - x48 - x50 <= 1
 c82:  x14 - x16 - x18 - x20 - x22 - x25 - x27 - x29 + x40 + x41 + x42 + x43
       + x46 - x49 + x50 <= 0
 c83:  x16 - x32 - x34 - x36 - x37 - x38 <= 0
 c84:  x22 + x48 <= 1
 c85:  x18 - x49 <= 0
 c86:  x20 <= 1
 c87:  x27 - x48 - x49 <= 1
 c88:  x25 - x50 <= 1
 c89:  x29 - x50 <= 1
 c90:  x37 + x48 <= 0
 c91:  x31 - x49 <= 0
 c92:  x34 - x50 <= 1
 c93:  x39 - x48 - x49 - x50 <= 1
 c94:  x35 - x49 - x50 <= 1
 c95:  x46 + x50 <= 0
 c96:  x45 + x48 + x49 + x50 <= 0
 c97:  x47 + x48 + x49 + x50 <= 0
 c98:  x43 + x50 <= 0
 c99:  x41 - x48 + x50 <= 0
 c100: x40 + x49 + x50 <= 1
 c101: x42 + x49 <= 1
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
