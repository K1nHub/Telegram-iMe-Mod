package com.google.android.gms.appindexing;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@Deprecated
/* loaded from: classes.dex */
public interface AppIndexApi {

    /* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    @VisibleForTesting
    @Deprecated
    /* loaded from: classes.dex */
    public interface ActionResult {
        PendingResult<Status> end(GoogleApiClient googleApiClient);

        PendingResult<Status> getPendingResult();
    }

    /* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class AppIndexingLink {
        public final Uri appIndexingUrl;
        public final int viewId;
        public final Uri webUrl;

        @VisibleForTesting
        public AppIndexingLink(Uri uri, Uri uri2, View view) {
            this.appIndexingUrl = uri;
            this.webUrl = uri2;
            this.viewId = view.getId();
        }

        @VisibleForTesting
        public AppIndexingLink(Uri uri, View view) {
            this(uri, null, view);
        }
    }

    @VisibleForTesting
    @Deprecated
    ActionResult action(GoogleApiClient googleApiClient, Action action);

    PendingResult<Status> end(GoogleApiClient googleApiClient, Action action);

    @VisibleForTesting
    PendingResult<Status> start(GoogleApiClient googleApiClient, Action action);

    @VisibleForTesting
    @Deprecated
    PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String str, Uri uri, List<AppIndexingLink> list);

    @VisibleForTesting
    @Deprecated
    PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String str, Uri uri2, List<AppIndexingLink> list);

    @VisibleForTesting
    @Deprecated
    PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent);

    @VisibleForTesting
    @Deprecated
    PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri);
}
