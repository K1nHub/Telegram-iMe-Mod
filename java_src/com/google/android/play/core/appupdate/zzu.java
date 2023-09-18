package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.AppUpdateOptions;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzu extends AppUpdateOptions.Builder {
    private Integer zza;
    private Boolean zzb;

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions build() {
        Integer num = this.zza;
        if (num == null || this.zzb == null) {
            StringBuilder sb = new StringBuilder();
            if (this.zza == null) {
                sb.append(" appUpdateType");
            }
            if (this.zzb == null) {
                sb.append(" allowAssetPackDeletion");
            }
            String valueOf = String.valueOf(sb);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 28);
            sb2.append("Missing required properties:");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }
        return new zzw(num.intValue(), this.zzb.booleanValue(), null);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions.Builder setAllowAssetPackDeletion(boolean z) {
        this.zzb = Boolean.valueOf(z);
        return this;
    }

    public final AppUpdateOptions.Builder setAppUpdateType(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }
}
