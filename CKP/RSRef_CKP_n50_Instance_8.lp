\ENCODING=ISO-8859-1
\Problem name: RSRef_CKP

Minimize
 obj: x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
      + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
      + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
      + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
Subject To
 c1:   - x5 - x6 - x7 - x9 - x12 - x15 - x16 - x39 + x49 - x50 <= 0
 c2:   x5 + x6 + x7 + x9 + x12 + x15 + x16 + x39 - x49 + x50 <= 1
 c3:   x1 + x6 - x8 - x10 - x11 + x12 - x13 - x17 - x19 - x20 - x21 - x22 - x23
       - x24 - x25 - x29 - x32 + x35 + x36 - x39 + x44 + x45 + x46 - x48 - x50
       <= 1
 c4:   - x6 + x7 + x33 + x34 + x47 <= 0
 c5:   x2 - x7 + x8 + x18 + x19 + x26 + x32 + x37 + x38 + x42 + x43 + x44 + x45
       + x46 + x47 <= 1
 c6:   x3 + x5 + x8 + x10 - x12 + x13 + x17 + x22 + x23 - x26 - x27 - x28 - x33
       - x34 - x35 - x36 - x37 - x38 + x42 + x48 + x49 <= 1
 c7:   x4 - x5 + x9 + x10 - x12 - x18 + x20 + x21 - x30 - x31 - x32 - x33 - x34
       - x35 - x36 - x37 - x38 + x40 + x41 - x46 + x48 <= 1
 c8:   - x8 + x13 + x24 + x25 - x49 <= 1
 c9:   x12 + x48 - x50 <= 1
 c10:  - x10 <= 1
 c11:  - x13 + x48 - x49 <= 1
 c12:  x17 + x49 <= 0
 c13:  - x18 - x48 <= 0
 c14:  - x26 + x50 <= 0
 c15:  x14 + x15 + x16 - x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
       + x26 + x29 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 - x40 - x41
       - x42 - x43 - x45 - x46 - x47 + x49 - x50 <= 1
 c16:  - x15 + x30 + x31 + x35 + x36 <= 0
 c17:  - x19 + x50 <= 0
 c18:  - x22 + x49 - x50 <= 0
 c19:  - x20 + x48 <= 1
 c20:  - x24 + x48 + x50 <= 0
 c21:  - x35 + x49 <= 0
 c22:  - x33 + x49 + x50 <= 0
 c23:  - x37 - x48 + x50 <= 0
 c24:  - x30 + x49 <= 0
 c25:  - x27 + x50 <= -1
 c26:  - x1 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 <= 1
 c27:  - x2 - x49 + x50 <= 0
 c28:  - x3 + x11 + x41 + x46 - x50 <= 1
 c29:  - x4 + x11 + x40 + x43 - x44 <= 0
 c30:  - x9 + x50 <= 1
 c31:  - x11 + x48 <= 1
 c32:  - x14 + x27 + x28 + x30 + x31 <= 0
 c33:  - x16 + x27 + x28 + x29 + x32 + x33 + x34 + x37 + x38 + x39 <= 0
 c34:  - x23 + x48 + x49 - x50 <= 1
 c35:  - x21 <= 0
 c36:  - x25 + x50 <= 0
 c37:  - x36 + x49 <= 0
 c38:  - x34 - x48 + x49 + x50 <= 0
 c39:  - x38 + x50 <= 0
 c40:  - x31 + x49 <= 0
 c41:  - x28 + x49 + x50 <= 0
 c42:  - x32 + x50 <= 0
 c43:  - x29 + x50 <= 0
 c44:  - x39 + x50 <= 0
 c45:  - x46 - x50 <= 1
 c46:  - x45 - x48 - x49 - x50 <= 1
 c47:  - x47 - x48 - x49 <= 1
 c48:  - x42 - x49 <= 1
 c49:  - x43 - x49 <= 1
 c50:  - x41 - x50 <= 1
 c51:  - x40 + x48 - x49 - x50 <= 1
 c52:  - x44 - x48 - x50 <= 1
 c53:  - x1 - x6 + x8 + x10 + x11 - x12 + x13 + x17 + x19 + x20 + x21 + x22
       + x23 + x24 + x25 + x29 + x32 - x35 - x36 + x39 - x44 - x45 - x46 + x48
       + x50 <= 0
 c54:  x6 - x7 - x33 - x34 - x47 <= 1
 c55:  - x2 + x7 - x8 - x18 - x19 - x26 - x32 - x37 - x38 - x42 - x43 - x44
       - x45 - x46 - x47 <= 0
 c56:  - x3 - x5 - x8 - x10 + x12 - x13 - x17 - x22 - x23 + x26 + x27 + x28
       + x33 + x34 + x35 + x36 + x37 + x38 - x42 - x48 - x49 <= 0
 c57:  - x4 + x5 - x9 - x10 + x12 + x18 - x20 - x21 + x30 + x31 + x32 + x33
       + x34 + x35 + x36 + x37 + x38 - x40 - x41 + x46 - x48 <= 0
 c58:  x8 - x13 - x24 - x25 + x49 <= 0
 c59:  - x12 - x48 + x50 <= 0
 c60:  x10 <= 0
 c61:  x13 - x48 + x49 <= 0
 c62:  - x17 - x49 <= 1
 c63:  x18 + x48 <= 1
 c64:  x26 - x50 <= 1
 c65:  - x14 - x15 - x16 + x17 - x18 - x19 - x20 - x21 - x22 - x23 - x24 - x25
       - x26 - x29 - x32 - x33 - x34 - x35 - x36 - x37 - x38 - x39 + x40 + x41
       + x42 + x43 + x45 + x46 + x47 - x49 + x50 <= 0
 c66:  x15 - x30 - x31 - x35 - x36 <= 1
 c67:  x19 - x50 <= 1
 c68:  x22 - x49 + x50 <= 1
 c69:  x20 - x48 <= 0
 c70:  x24 - x48 - x50 <= 1
 c71:  x35 - x49 <= 1
 c72:  x33 - x49 - x50 <= 1
 c73:  x37 + x48 - x50 <= 1
 c74:  x30 - x49 <= 1
 c75:  x27 - x50 <= 2
 c76:  x1 - x40 - x41 - x42 - x43 - x44 - x45 - x46 - x47 <= 0
 c77:  x2 + x49 - x50 <= 1
 c78:  x3 - x11 - x41 - x46 + x50 <= 0
 c79:  x4 - x11 - x40 - x43 + x44 <= 1
 c80:  x9 - x50 <= 0
 c81:  x11 - x48 <= 0
 c82:  x14 - x27 - x28 - x30 - x31 <= 1
 c83:  x16 - x27 - x28 - x29 - x32 - x33 - x34 - x37 - x38 - x39 <= 1
 c84:  x23 - x48 - x49 + x50 <= 0
 c85:  x21 <= 1
 c86:  x25 - x50 <= 1
 c87:  x36 - x49 <= 1
 c88:  x34 + x48 - x49 - x50 <= 1
 c89:  x38 - x50 <= 1
 c90:  x31 - x49 <= 1
 c91:  x28 - x49 - x50 <= 1
 c92:  x32 - x50 <= 1
 c93:  x29 - x50 <= 1
 c94:  x39 - x50 <= 1
 c95:  x46 + x50 <= 0
 c96:  x45 + x48 + x49 + x50 <= 0
 c97:  x47 + x48 + x49 <= 0
 c98:  x42 + x49 <= 0
 c99:  x43 + x49 <= 0
 c100: x41 + x50 <= 0
 c101: x40 - x48 + x49 + x50 <= 0
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
