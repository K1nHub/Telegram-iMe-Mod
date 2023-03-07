package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzxi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzd(zztn zztnVar) {
        zzxl zzxlVar = new zzxl(zztnVar);
        StringBuilder sb = new StringBuilder(zzxlVar.size());
        for (int i = 0; i < zzxlVar.size(); i++) {
            byte zzcm = zzxlVar.zzcm(i);
            if (zzcm == 34) {
                sb.append("\\\"");
            } else if (zzcm == 39) {
                sb.append("\\'");
            } else if (zzcm != 92) {
                switch (zzcm) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (zzcm >= 32 && zzcm <= 126) {
                            sb.append((char) zzcm);
                            continue;
                        } else {
                            sb.append('\\');
                            sb.append((char) (((zzcm >>> 6) & 3) + 48));
                            sb.append((char) (((zzcm >>> 3) & 7) + 48));
                            sb.append((char) ((zzcm & 7) + 48));
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
