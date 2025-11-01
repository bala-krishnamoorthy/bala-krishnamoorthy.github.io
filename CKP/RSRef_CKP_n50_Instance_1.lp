\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x3 - x5 - x7 - x8 - x9 - x10 + x16 + x17 - x24 - x32 - x39 <= 1
 c2:   x3 + x5 + x7 + x8 + x9 + x10 - x16 - x17 + x24 + x32 + x39 <= 0
 c3:   x1 + x3 - x11 - x13 - x14 - x18 - x19 - x20 - x21 - x25 - x29 + x30
       + x35 - x39 + x44 + x45 + x47 - x50 <= 0
 c4:   x2 - x3 + x5 + x12 - x22 - x23 + x26 - x30 - x31 + x33 + x34 + x41 + x46
       <= 0
 c5:   x4 - x5 + x37 + x38 + x40 + x42 + x43 + x44 + x45 + x46 + x47 - x48
       - x49 <= 1
 c6:   x6 + x7 + x11 - x12 + x19 - x26 - x27 - x28 - x30 - x32 - x34 - x35
       - x36 - x38 - x44 - x46 + x49 - x50 <= 0
 c7:   - x7 + x9 + x10 + x18 + x25 - x33 - x34 - x37 - x38 + x41 + x42 - x45
       + x48 <= 0
 c8:   - x9 + x13 + x14 + x40 + x48 - x49 + x50 <= 0
 c9:   x12 + x48 - x50 <= 0
 c10:  - x11 + x48 <= 1
 c11:  - x13 + x48 + x50 <= 1
 c12:  x18 - x50 <= 0
 c13:  x19 <= 1
 c14:  - x26 + x50 <= 1
 c15:  - x16 + x27 + x28 + x29 + x30 + x32 + x33 + x34 + x35 + x36 + x37 + x38
       + x39 + x49 <= 1
 c16:  x15 + x16 + x17 - x18 - x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
       + x35 + x36 - x40 - x41 - x42 - x43 - x47 <= 1
 c17:  - x24 + x50 <= 1
 c18:  - x22 + x48 + x49 <= 1
 c19:  - x20 <= 1
 c20:  - x25 + x50 <= 1
 c21:  - x35 + x49 <= 1
 c22:  - x33 + x49 + x50 <= 1
 c23:  - x37 + x50 <= 1
 c24:  - x30 + x49 <= 1
 c25:  - x27 + x50 <= 1
 c26:  - x1 + x36 + x43 + x44 + x45 + x46 + x47 - x50 <= 0
 c27:  - x2 + x42 - x49 <= 0
 c28:  - x4 - x49 <= 0
 c29:  - x6 + x8 + x13 + x14 + x20 + x21 + x22 + x23 - x33 - x37 + x40 + x41
       + x43 + x48 - x50 <= 1
 c30:  - x8 + x11 - x12 - x35 - x36 <= 0
 c31:  - x10 - x49 <= 0
 c32:  - x14 + x48 - x49 <= 1
 c33:  - x17 + x31 + x49 - x50 <= 1
 c34:  - x15 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x37 + x38 + x39
       <= 0
 c35:  - x23 + x49 <= 1
 c36:  - x21 <= 1
 c37:  - x36 + x49 <= 1
 c38:  - x34 - x48 + x49 + x50 <= 1
 c39:  - x38 + x50 <= 1
 c40:  - x28 + x49 + x50 <= 1
 c41:  - x32 + x50 <= 1
 c42:  - x31 + x49 <= 1
 c43:  - x29 + x49 + x50 <= 2
 c44:  - x39 + x50 <= 1
 c45:  - x47 - x50 <= 0
 c46:  - x43 - x50 <= 0
 c47:  - x42 - x49 <= 0
 c48:  - x41 - x50 <= 0
 c49:  - x40 - x49 <= 0
 c50:  - x45 - x48 - x50 <= 0
 c51:  - x44 - x48 - x49 <= 0
 c52:  - x46 - x48 - x49 <= 0
 c53:  - x1 - x3 + x11 + x13 + x14 + x18 + x19 + x20 + x21 + x25 + x29 - x30
       - x35 + x39 - x44 - x45 - x47 + x50 <= 1
 c54:  - x2 + x3 - x5 - x12 + x22 + x23 - x26 + x30 + x31 - x33 - x34 - x41
       - x46 <= 1
 c55:  - x4 + x5 - x37 - x38 - x40 - x42 - x43 - x44 - x45 - x46 - x47 + x48
       + x49 <= 0
 c56:  - x6 - x7 - x11 + x12 - x19 + x26 + x27 + x28 + x30 + x32 + x34 + x35
       + x36 + x38 + x44 + x46 - x49 + x50 <= 1
 c57:  x7 - x9 - x10 - x18 - x25 + x33 + x34 + x37 + x38 - x41 - x42 + x45
       - x48 <= 1
 c58:  x9 - x13 - x14 - x40 - x48 + x49 - x50 <= 1
 c59:  - x12 - x48 + x50 <= 1
 c60:  x11 - x48 <= 0
 c61:  x13 - x48 - x50 <= 0
 c62:  - x18 + x50 <= 1
 c63:  - x19 <= 0
 c64:  x26 - x50 <= 0
 c65:  x16 - x27 - x28 - x29 - x30 - x32 - x33 - x34 - x35 - x36 - x37 - x38
       - x39 - x49 <= 0
 c66:  - x15 - x16 - x17 + x18 + x19 - x20 - x21 - x22 - x23 - x24 - x25 - x26
       - x35 - x36 + x40 + x41 + x42 + x43 + x47 <= 0
 c67:  x24 - x50 <= 0
 c68:  x22 - x48 - x49 <= 0
 c69:  x20 <= 0
 c70:  x25 - x50 <= 0
 c71:  x35 - x49 <= 0
 c72:  x33 - x49 - x50 <= 0
 c73:  x37 - x50 <= 0
 c74:  x30 - x49 <= 0
 c75:  x27 - x50 <= 0
 c76:  x1 - x36 - x43 - x44 - x45 - x46 - x47 + x50 <= 1
 c77:  x2 - x42 + x49 <= 1
 c78:  x4 + x49 <= 1
 c79:  x6 - x8 - x13 - x14 - x20 - x21 - x22 - x23 + x33 + x37 - x40 - x41
       - x43 - x48 + x50 <= 0
 c80:  x8 - x11 + x12 + x35 + x36 <= 1
 c81:  x10 + x49 <= 1
 c82:  x14 - x48 + x49 <= 0
 c83:  x17 - x31 - x49 + x50 <= 0
 c84:  x15 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x37 - x38 - x39
       <= 1
 c85:  x23 - x49 <= 0
 c86:  x21 <= 0
 c87:  x36 - x49 <= 0
 c88:  x34 + x48 - x49 - x50 <= 0
 c89:  x38 - x50 <= 0
 c90:  x28 - x49 - x50 <= 0
 c91:  x32 - x50 <= 0
 c92:  x31 - x49 <= 0
 c93:  x29 - x49 - x50 <= -1
 c94:  x39 - x50 <= 0
 c95:  x47 + x50 <= 1
 c96:  x43 + x50 <= 1
 c97:  x42 + x49 <= 1
 c98:  x41 + x50 <= 1
 c99:  x40 + x49 <= 1
 c100: x45 + x48 + x50 <= 1
 c101: x44 + x48 + x49 <= 1
 c102: x46 + x48 + x49 <= 1
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
