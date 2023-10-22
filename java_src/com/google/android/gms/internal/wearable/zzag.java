package com.google.android.gms.internal.wearable;

import com.google.android.gms.internal.wearable.zzaf;
import com.google.android.gms.internal.wearable.zzag;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public abstract class zzag<MessageType extends zzag<MessageType, BuilderType>, BuilderType extends zzaf<MessageType, BuilderType>> implements zzdc {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static void zzJ(Iterable iterable, List list) {
        zzcd.zze(iterable);
        if (iterable instanceof zzck) {
            List zzh = ((zzck) iterable).zzh();
            zzck zzckVar = (zzck) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj != null) {
                    if (obj instanceof zzaw) {
                        zzckVar.zzi((zzaw) obj);
                    } else {
                        zzckVar.add((String) obj);
                    }
                } else {
                    int size2 = zzckVar.size();
                    String str = "Element at index " + (size2 - size) + " is null.";
                    int size3 = zzckVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        zzckVar.remove(size3);
                    }
                    throw new NullPointerException(str);
                }
            }
        } else if (!(iterable instanceof zzdj)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 != null) {
                    list.add(obj2);
                } else {
                    int size5 = list.size();
                    String str2 = "Element at index " + (size5 - size4) + " is null.";
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(str2);
                }
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzH() {
        throw null;
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final zzaw zzI() {
        try {
            int zzM = zzM();
            zzaw zzawVar = zzaw.zzb;
            byte[] bArr = new byte[zzM];
            zzbe zzC = zzbe.zzC(bArr);
            zzaa(zzC);
            zzC.zzD();
            return new zzat(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a ByteString threw an IOException (should never happen).", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzK(int i) {
        throw null;
    }

    public final byte[] zzL() {
        try {
            byte[] bArr = new byte[zzM()];
            zzbe zzC = zzbe.zzC(bArr);
            zzaa(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a byte array threw an IOException (should never happen).", e);
        }
    }
}
