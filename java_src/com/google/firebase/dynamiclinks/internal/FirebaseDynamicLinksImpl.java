package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks;
import com.google.firebase.inject.Provider;
/* loaded from: classes3.dex */
public class FirebaseDynamicLinksImpl extends FirebaseDynamicLinks {
    private final Provider<AnalyticsConnector> analytics;
    private final GoogleApi<Api.ApiOptions.NoOptions> googleApi;

    public FirebaseDynamicLinksImpl(FirebaseApp firebaseApp, Provider<AnalyticsConnector> provider) {
        this(new DynamicLinksApi(firebaseApp.getApplicationContext()), firebaseApp, provider);
    }

    @VisibleForTesting
    public FirebaseDynamicLinksImpl(GoogleApi<Api.ApiOptions.NoOptions> googleApi, FirebaseApp firebaseApp, Provider<AnalyticsConnector> provider) {
        this.googleApi = googleApi;
        FirebaseApp firebaseApp2 = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        this.analytics = provider;
        if (provider.get() == null) {
            Log.w("FDL", "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events.");
        }
    }

    @Override // com.google.firebase.dynamiclinks.FirebaseDynamicLinks
    public Task<PendingDynamicLinkData> getDynamicLink(Uri uri) {
        return this.googleApi.doWrite(new GetDynamicLinkImpl(this.analytics, uri.toString()));
    }

    /* loaded from: classes3.dex */
    static final class GetDynamicLinkImpl extends TaskApiCall<DynamicLinksClient, PendingDynamicLinkData> {
        private final Provider<AnalyticsConnector> analytics;
        private final String dynamicLink;

        GetDynamicLinkImpl(Provider<AnalyticsConnector> provider, String str) {
            super(null, false, 13201);
            this.dynamicLink = str;
            this.analytics = provider;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.TaskApiCall
        public void doExecute(DynamicLinksClient dynamicLinksClient, TaskCompletionSource<PendingDynamicLinkData> taskCompletionSource) throws RemoteException {
            dynamicLinksClient.getDynamicLink(new DynamicLinkCallbacks(this.analytics, taskCompletionSource), this.dynamicLink);
        }
    }

    /* loaded from: classes3.dex */
    static class AbstractDynamicLinkCallbacks extends IDynamicLinksCallbacks.Stub {
        AbstractDynamicLinkCallbacks() {
        }

        @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
        public void onCreateShortDynamicLink(Status status, ShortDynamicLinkImpl shortDynamicLinkImpl) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class DynamicLinkCallbacks extends AbstractDynamicLinkCallbacks {
        private final Provider<AnalyticsConnector> analytics;
        private final TaskCompletionSource<PendingDynamicLinkData> completionSource;

        public DynamicLinkCallbacks(Provider<AnalyticsConnector> provider, TaskCompletionSource<PendingDynamicLinkData> taskCompletionSource) {
            this.analytics = provider;
            this.completionSource = taskCompletionSource;
        }

        @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
        public void onGetDynamicLink(Status status, DynamicLinkData dynamicLinkData) {
            Bundle bundle;
            AnalyticsConnector analyticsConnector;
            TaskUtil.setResultOrApiException(status, dynamicLinkData == null ? null : new PendingDynamicLinkData(dynamicLinkData), this.completionSource);
            if (dynamicLinkData == null || (bundle = dynamicLinkData.getExtensionBundle().getBundle("scionData")) == null || bundle.keySet() == null || (analyticsConnector = this.analytics.get()) == null) {
                return;
            }
            for (String str : bundle.keySet()) {
                analyticsConnector.logEvent("fdl", str, bundle.getBundle(str));
            }
        }
    }
}
