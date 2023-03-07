package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zzih;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzih<MessageType extends zzih<MessageType, BuilderType>, BuilderType extends zzig<MessageType, BuilderType>> implements zzlg {
    protected int zzb = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void zzbq(Iterable<T> iterable, List<? super T> list) {
        zzkh.zze(iterable);
        if (iterable instanceof zzko) {
            List<?> zzh = ((zzko) iterable).zzh();
            zzko zzkoVar = (zzko) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj != null) {
                    if (obj instanceof zziy) {
                        zzkoVar.zzi((zziy) obj);
                    } else {
                        zzkoVar.add((String) obj);
                    }
                } else {
                    int size2 = zzkoVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = zzkoVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        zzkoVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                }
            }
        } else if (!(iterable instanceof zzln)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t != 0) {
                    list.add(t);
                } else {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzbo() {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final zziy zzbp() {
        try {
            int zzbt = zzbt();
            zziy zziyVar = zziy.zzb;
            byte[] bArr = new byte[zzbt];
            zzjg zzC = zzjg.zzC(bArr);
            zzbH(zzC);
            zzC.zzD();
            return new zziv(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzbr(int i) {
        throw null;
    }

    public final byte[] zzbs() {
        try {
            byte[] bArr = new byte[zzbt()];
            zzjg zzC = zzjg.zzC(bArr);
            zzbH(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
