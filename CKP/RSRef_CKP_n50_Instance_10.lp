\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x3 - x5 - x7 - x8 - x9 - x10 - x17 - x21 - x22 + x31 - x46 + x49 - x50
       <= 1
 c2:   x3 + x5 + x7 + x8 + x9 + x10 + x17 + x21 + x22 - x31 + x46 - x49 + x50
       <= 0
 c3:   x1 + x3 - x11 - x12 - x15 - x18 - x23 - x26 - x27 - x30 + x37 - x39
       - x40 + x44 + x45 + x47 <= 1
 c4:   x2 - x3 + x5 + x13 - x14 - x19 - x20 - x24 - x28 - x29 - x32 - x37 - x38
       - x39 - x40 <= 0
 c5:   x4 - x5 - x25 - x35 + x41 + x42 + x43 + x44 + x45 + x46 + x47 - x49
       + x50 <= 0
 c6:   x6 + x7 + x11 - x13 + x18 + x19 - x31 - x32 - x33 - x34 - x50 <= 1
 c7:   - x7 + x9 + x10 + x23 - x37 - x38 + x40 + x42 - x45 <= 0
 c8:   - x9 + x15 - x49 <= 0
 c9:   x13 + x48 + x49 - x50 <= 1
 c10:  - x11 + x24 + x25 + x26 + x27 - x46 + x48 <= 1
 c11:  - x15 + x48 + x50 <= 0
 c12:  x17 <= 1
 c13:  x16 - x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26 + x28
       + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40
       <= 1
 c14:  - x21 - x48 + x50 <= 0
 c15:  - x19 + x39 <= 1
 c16:  - x18 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
       + x40 - x47 <= 0
 c17:  - x23 + x50 <= 0
 c18:  - x25 + x48 + x49 <= 1
 c19:  - x24 + x48 <= 1
 c20:  - x26 + x50 <= 0
 c21:  - x37 + x49 <= 1
 c22:  - x31 + x50 <= 1
 c23:  - x33 - x48 + x50 <= 0
 c24:  - x35 + x49 <= 1
 c25:  - x28 + x49 <= 0
 c26:  - x1 + x32 + x38 + x43 + x44 + x45 + x46 + x47 - x50 <= 2
 c27:  - x2 + x41 + x42 + x43 + x46 <= 0
 c28:  - x4 - x36 - x48 - x49 <= 0
 c29:  - x6 + x8 + x12 + x14 + x15 + x20 + x39 + x41 + x46 + x48 - x50 <= 1
 c30:  - x8 + x11 + x12 - x13 + x14 <= 0
 c31:  - x10 - x49 + x50 <= 0
 c32:  - x14 + x48 - x50 <= 1
 c33:  - x12 + x48 <= 1
 c34:  - x16 + x27 - x41 - x42 - x43 - x44 - x46 <= 0
 c35:  - x22 - x48 + x50 <= 0
 c36:  - x20 + x49 - x50 <= 1
 c37:  - x27 + x50 <= 0
 c38:  - x38 + x49 <= 1
 c39:  - x32 + x49 + x50 <= 0
 c40:  - x34 - x48 + x50 <= 0
 c41:  - x36 + x49 <= 1
 c42:  - x29 + x49 + x50 <= 1
 c43:  - x30 + x50 <= 0
 c44:  - x39 + x48 + x49 <= 1
 c45:  - x40 + x50 <= 0
 c46:  - x47 - x50 <= 1
 c47:  - x46 - x48 - x49 - x50 <= 0
 c48:  - x44 - x50 <= 1
 c49:  - x43 - x49 <= 0
 c50:  - x41 - x49 - x50 <= 1
 c51:  - x42 - x49 <= 0
 c52:  - x45 - x48 - x50 <= 1
 c53:  - x1 - x3 + x11 + x12 + x15 + x18 + x23 + x26 + x27 + x30 - x37 + x39
       + x40 - x44 - x45 - x47 <= 0
 c54:  - x2 + x3 - x5 - x13 + x14 + x19 + x20 + x24 + x28 + x29 + x32 + x37
       + x38 + x39 + x40 <= 1
 c55:  - x4 + x5 + x25 + x35 - x41 - x42 - x43 - x44 - x45 - x46 - x47 + x49
       - x50 <= 1
 c56:  - x6 - x7 - x11 + x13 - x18 - x19 + x31 + x32 + x33 + x34 + x50 <= 0
 c57:  x7 - x9 - x10 - x23 + x37 + x38 - x40 - x42 + x45 <= 1
 c58:  x9 - x15 + x49 <= 1
 c59:  - x13 - x48 - x49 + x50 <= 0
 c60:  x11 - x24 - x25 - x26 - x27 + x46 - x48 <= 0
 c61:  x15 - x48 - x50 <= 1
 c62:  - x17 <= 0
 c63:  - x16 + x17 - x18 - x19 - x20 - x21 - x22 - x23 - x24 - x25 - x26 - x28
       - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36 - x37 - x38 - x39 - x40
       <= 0
 c64:  x21 + x48 - x50 <= 1
 c65:  x19 - x39 <= 0
 c66:  x18 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36 - x37 - x38
       - x40 + x47 <= 1
 c67:  x23 - x50 <= 1
 c68:  x25 - x48 - x49 <= 0
 c69:  x24 - x48 <= 0
 c70:  x26 - x50 <= 1
 c71:  x37 - x49 <= 0
 c72:  x31 - x50 <= 0
 c73:  x33 + x48 - x50 <= 1
 c74:  x35 - x49 <= 0
 c75:  x28 - x49 <= 1
 c76:  x1 - x32 - x38 - x43 - x44 - x45 - x46 - x47 + x50 <= -1
 c77:  x2 - x41 - x42 - x43 - x46 <= 1
 c78:  x4 + x36 + x48 + x49 <= 1
 c79:  x6 - x8 - x12 - x14 - x15 - x20 - x39 - x41 - x46 - x48 + x50 <= 0
 c80:  x8 - x11 - x12 + x13 - x14 <= 1
 c81:  x10 + x49 - x50 <= 1
 c82:  x14 - x48 + x50 <= 0
 c83:  x12 - x48 <= 0
 c84:  x16 - x27 + x41 + x42 + x43 + x44 + x46 <= 1
 c85:  x22 + x48 - x50 <= 1
 c86:  x20 - x49 + x50 <= 0
 c87:  x27 - x50 <= 1
 c88:  x38 - x49 <= 0
 c89:  x32 - x49 - x50 <= 1
 c90:  x34 + x48 - x50 <= 1
 c91:  x36 - x49 <= 0
 c92:  x29 - x49 - x50 <= 0
 c93:  x30 - x50 <= 1
 c94:  x39 - x48 - x49 <= 0
 c95:  x40 - x50 <= 1
 c96:  x47 + x50 <= 0
 c97:  x46 + x48 + x49 + x50 <= 1
 c98:  x44 + x50 <= 0
 c99:  x43 + x49 <= 1
 c100: x41 + x49 + x50 <= 0
 c101: x42 + x49 <= 1
 c102: x45 + x48 + x50 <= 0
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
