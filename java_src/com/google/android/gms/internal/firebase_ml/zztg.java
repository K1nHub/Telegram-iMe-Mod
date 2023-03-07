package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zztf;
import com.google.android.gms.internal.firebase_ml.zztg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public abstract class zztg<MessageType extends zztg<MessageType, BuilderType>, BuilderType extends zztf<MessageType, BuilderType>> implements zzwe {
    private static boolean zzboi = false;
    protected int zzboh = 0;

    @Override // com.google.android.gms.internal.firebase_ml.zzwe
    public final zztn zzpx() {
        try {
            zztv zzco = zztn.zzco(zzre());
            zzb(zzco.zzqj());
            return zzco.zzqi();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzre()];
            zzue zzg = zzue.zzg(bArr);
            zzb(zzg);
            zzg.zzqm();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzpy() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzci(int i) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzuw.checkNotNull(iterable);
        if (iterable instanceof zzvp) {
            List<?> zzsc = ((zzvp) iterable).zzsc();
            zzvp zzvpVar = (zzvp) list;
            int size = list.size();
            for (Object obj : zzsc) {
                if (obj == null) {
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(zzvpVar.size() - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size2 = zzvpVar.size() - 1; size2 >= size; size2--) {
                        zzvpVar.remove(size2);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof zztn) {
                    zzvpVar.zzc((zztn) obj);
                } else {
                    zzvpVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzwq) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size3 = list.size();
            for (T t : iterable) {
                if (t == null) {
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(list.size() - size3);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                        list.remove(size4);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        }
    }
}
