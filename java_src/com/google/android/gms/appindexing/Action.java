package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.appindexing.Thing;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@VisibleForTesting
@Deprecated
/* loaded from: classes.dex */
public final class Action extends Thing {
    public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
    public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
    public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
    public static final String TYPE_ACTIVATE = "http://schema.org/ActivateAction";
    public static final String TYPE_ADD = "http://schema.org/AddAction";
    public static final String TYPE_BOOKMARK = "http://schema.org/BookmarkAction";
    public static final String TYPE_COMMUNICATE = "http://schema.org/CommunicateAction";
    public static final String TYPE_FILM = "http://schema.org/FilmAction";
    public static final String TYPE_LIKE = "http://schema.org/LikeAction";
    public static final String TYPE_LISTEN = "http://schema.org/ListenAction";
    public static final String TYPE_PHOTOGRAPH = "http://schema.org/PhotographAction";
    public static final String TYPE_RESERVE = "http://schema.org/ReserveAction";
    public static final String TYPE_SEARCH = "http://schema.org/SearchAction";
    public static final String TYPE_VIEW = "http://schema.org/ViewAction";
    public static final String TYPE_WANT = "http://schema.org/WantAction";
    public static final String TYPE_WATCH = "http://schema.org/WatchAction";

    /* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class Builder extends Thing.Builder {
        public Builder(String str) {
            Preconditions.checkNotNull(str);
            super.put(SessionDescription.ATTR_TYPE, str);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Action build() {
            Preconditions.checkNotNull(this.zza.get("object"), "setObject is required before calling build().");
            Preconditions.checkNotNull(this.zza.get(SessionDescription.ATTR_TYPE), "setType is required before calling build().");
            Bundle bundle = (Bundle) this.zza.getParcelable("object");
            if (bundle != null) {
                Preconditions.checkNotNull(bundle.get(AppMeasurementSdk.ConditionalUserProperty.NAME), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
                Preconditions.checkNotNull(bundle.get(ImagesContract.URL), "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            }
            return new Action(this.zza, null);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, Thing thing) {
            super.put(str, thing);
            return this;
        }

        public Builder setActionStatus(String str) {
            Preconditions.checkNotNull(str);
            super.put("actionStatus", str);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder setName(String str) {
            super.put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
            return this;
        }

        public Builder setObject(Thing thing) {
            Preconditions.checkNotNull(thing);
            super.put("object", thing);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder setUrl(Uri uri) {
            if (uri != null) {
                super.put(ImagesContract.URL, uri.toString());
            }
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder put(String str, Thing thing) {
            put(str, thing);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder setName(String str) {
            setName(str);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder setUrl(Uri uri) {
            setUrl(uri);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, String str2) {
            super.put(str, str2);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder put(String str, String str2) {
            put(str, str2);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, boolean z) {
            super.put(str, z);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder put(String str, boolean z) {
            put(str, z);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, Thing[] thingArr) {
            super.put(str, thingArr);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder put(String str, Thing[] thingArr) {
            put(str, thingArr);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, String[] strArr) {
            super.put(str, strArr);
            return this;
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public final /* bridge */ /* synthetic */ Thing.Builder put(String str, String[] strArr) {
            put(str, strArr);
            return this;
        }
    }

    /* synthetic */ Action(Bundle bundle, zza zzaVar) {
        super(bundle);
    }

    public static Action newAction(String str, String str2, Uri uri) {
        return newAction(str, str2, null, uri);
    }

    public static Action newAction(String str, String str2, Uri uri, Uri uri2) {
        Builder builder = new Builder(str);
        Thing.Builder builder2 = new Thing.Builder();
        builder2.setName(str2);
        builder2.setId(uri == null ? null : uri.toString());
        builder2.setUrl(uri2);
        builder.setObject(builder2.build());
        return builder.build();
    }
}
