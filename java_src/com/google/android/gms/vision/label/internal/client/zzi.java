package com.google.android.gms.vision.label.internal.client;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.vision.zzl;
import com.google.android.gms.internal.vision.zzm;
import com.google.android.gms.vision.label.ImageLabel;
/* loaded from: classes3.dex */
public final class zzi extends zzm {
    private ImageLabelerOptions zzdr;

    public zzi(Context context, ImageLabelerOptions imageLabelerOptions) {
        super(context, "LabelerNativeHandle", "imagelabel");
        this.zzdr = imageLabelerOptions;
        zzq();
    }

    public final ImageLabel[] zza(Bitmap bitmap, LabelOptions labelOptions) {
        if (isOperational()) {
            try {
                zze[] zza = ((INativeImageLabeler) zzq()).zza(ObjectWrapper.wrap(bitmap), labelOptions);
                ImageLabel[] imageLabelArr = new ImageLabel[zza.length];
                for (int i = 0; i != zza.length; i++) {
                    imageLabelArr[i] = new ImageLabel(zza[i].zzdn, zza[i].label, zza[i].zzdo);
                }
                return imageLabelArr;
            } catch (RemoteException e) {
                Log.e("LabelerNativeHandle", "Error calling native image labeler", e);
                return new ImageLabel[0];
            }
        }
        return new ImageLabel[0];
    }

    protected final void zzm() throws RemoteException {
        ((INativeImageLabeler) zzq()).zzs();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.vision.zzl, com.google.android.gms.vision.label.internal.client.INativeImageLabeler] */
    @Override // com.google.android.gms.internal.vision.zzm, com.google.android.gms.internal.vision.zzt
    protected final /* synthetic */ zzl zza(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.LoadingException {
        zzb asInterface = zzc.asInterface(dynamiteModule.instantiate("com.google.android.gms.vision.label.ChimeraNativeImageLabelerCreator"));
        if (asInterface == null) {
            return null;
        }
        return asInterface.newImageLabeler(ObjectWrapper.wrap(context), this.zzdr);
    }
}
