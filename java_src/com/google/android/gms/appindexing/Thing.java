package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@VisibleForTesting
@Deprecated
/* loaded from: classes.dex */
public class Thing {
    final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Thing(Bundle bundle) {
        this.zza = bundle;
    }

    public final Bundle zza() {
        return this.zza;
    }

    /* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    @VisibleForTesting
    @Deprecated
    /* loaded from: classes.dex */
    public static class Builder {
        final Bundle zza = new Bundle();

        public Thing build() {
            return new Thing(this.zza);
        }

        public Builder put(String str, Thing thing) {
            Preconditions.checkNotNull(str);
            if (thing != null) {
                this.zza.putParcelable(str, thing.zza);
            }
            return this;
        }

        public Builder setDescription(String str) {
            put("description", str);
            return this;
        }

        public Builder setId(String str) {
            if (str != null) {
                put(TtmlNode.ATTR_ID, str);
            }
            return this;
        }

        public Builder setName(String str) {
            Preconditions.checkNotNull(str);
            put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
            return this;
        }

        public Builder setType(String str) {
            put(SessionDescription.ATTR_TYPE, str);
            return this;
        }

        public Builder setUrl(Uri uri) {
            Preconditions.checkNotNull(uri);
            put(ImagesContract.URL, uri.toString());
            return this;
        }

        public Builder put(String str, String str2) {
            Preconditions.checkNotNull(str);
            if (str2 != null) {
                this.zza.putString(str, str2);
            }
            return this;
        }

        public Builder put(String str, boolean z) {
            Preconditions.checkNotNull(str);
            this.zza.putBoolean(str, z);
            return this;
        }

        public Builder put(String str, Thing[] thingArr) {
            Preconditions.checkNotNull(str);
            if (thingArr != null) {
                ArrayList arrayList = new ArrayList();
                for (Thing thing : thingArr) {
                    if (thing != null) {
                        arrayList.add(thing.zza);
                    }
                }
                this.zza.putParcelableArray(str, (Parcelable[]) arrayList.toArray(new Bundle[arrayList.size()]));
            }
            return this;
        }

        public Builder put(String str, String[] strArr) {
            Preconditions.checkNotNull(str);
            if (strArr != null) {
                this.zza.putStringArray(str, strArr);
            }
            return this;
        }
    }
}
