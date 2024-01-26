package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
/* loaded from: classes3.dex */
final class zzjn implements ObjectEncoder {
    static final zzjn zza = new zzjn();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;
    private static final FieldDescriptor zze;
    private static final FieldDescriptor zzf;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("inferenceCommonLogEvent");
        zzbz zzbzVar = new zzbz();
        zzbzVar.zza(1);
        zzb = builder.withProperty(zzbzVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("imageInfo");
        zzbz zzbzVar2 = new zzbz();
        zzbzVar2.zza(2);
        zzc = builder2.withProperty(zzbzVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("captionCount");
        zzbz zzbzVar3 = new zzbz();
        zzbzVar3.zza(4);
        zzd = builder3.withProperty(zzbzVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("highestScore");
        zzbz zzbzVar4 = new zzbz();
        zzbzVar4.zza(5);
        zze = builder4.withProperty(zzbzVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("imageType");
        zzbz zzbzVar5 = new zzbz();
        zzbzVar5.zza(6);
        zzf = builder5.withProperty(zzbzVar5.zzb()).build();
    }

    private zzjn() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) throws IOException {
        zzpv zzpvVar = (zzpv) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        throw null;
    }
}
