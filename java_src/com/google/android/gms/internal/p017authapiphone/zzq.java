package com.google.android.gms.internal.p017authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* renamed from: com.google.android.gms.internal.auth-api-phone.zzq */
/* loaded from: classes.dex */
final class zzq extends zzf {
    final /* synthetic */ TaskCompletionSource zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzr zzrVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p017authapiphone.zzg
    public final void zzb(Status status, boolean z) {
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), this.zza);
    }
}
