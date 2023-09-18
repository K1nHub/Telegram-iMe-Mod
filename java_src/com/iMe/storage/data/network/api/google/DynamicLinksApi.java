package com.iMe.storage.data.network.api.google;

import android.net.Uri;
import com.google.android.gms.tasks.Task;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DynamicLinksApi.kt */
/* loaded from: classes4.dex */
public final class DynamicLinksApi {
    private final FirebaseDynamicLinks dynamicLinks;

    public DynamicLinksApi(FirebaseDynamicLinks dynamicLinks) {
        Intrinsics.checkNotNullParameter(dynamicLinks, "dynamicLinks");
        this.dynamicLinks = dynamicLinks;
    }

    public final Observable<PendingDynamicLinkData> getLink(AndroidActivityHolder holder, String url) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(url, "url");
        Task<PendingDynamicLinkData> dynamicLink = this.dynamicLinks.getDynamicLink(Uri.parse(url));
        Intrinsics.checkNotNullExpressionValue(dynamicLink, "dynamicLinks\n           …namicLink(Uri.parse(url))");
        return FirebaseExtKt.asObservableTask(dynamicLink, holder.getValue());
    }
}
