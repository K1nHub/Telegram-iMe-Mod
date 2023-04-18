package com.iMe.p031ui.twitter.auth;

import android.net.Uri;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.model.twitter.TwitterAuthResult;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.extentions.GsonExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
/* compiled from: TwitterAuthPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthPresenter */
/* loaded from: classes3.dex */
public final class TwitterAuthPresenter extends BasePresenter<TwitterAuthView> {
    private final ResourceManager resourceManager;

    static {
        new Companion(null);
    }

    public TwitterAuthPresenter(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    public final boolean isAuthResultUrl(String url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, "https://stub/", false, 2, null);
        return startsWith$default;
    }

    public final void processAuthResult(Uri url) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        TwitterAuthResult failure;
        Intrinsics.checkNotNullParameter(url, "url");
        Set<String> queryParameterNames = url.getQueryParameterNames();
        Intrinsics.checkNotNullExpressionValue(queryParameterNames, "url.queryParameterNames");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(queryParameterNames, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : queryParameterNames) {
            String queryParameter = url.getQueryParameter((String) obj);
            if (queryParameter == null) {
                queryParameter = "";
            }
            linkedHashMap.put(obj, queryParameter);
        }
        String lastPathSegment = url.getLastPathSegment();
        if (lastPathSegment != null) {
            int hashCode = lastPathSegment.hashCode();
            if (hashCode != -1867169789) {
                if (hashCode == 3135262 && lastPathSegment.equals("fail")) {
                    Gson globalGson = GsonExtKt.getGlobalGson();
                    failure = (TwitterAuthResult) globalGson.fromJson(globalGson.toJson(linkedHashMap), new TypeToken<TwitterAuthResult.Failure>() { // from class: com.iMe.ui.twitter.auth.TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$2
                    }.getType());
                }
            } else if (lastPathSegment.equals("success")) {
                Gson globalGson2 = GsonExtKt.getGlobalGson();
                failure = (TwitterAuthResult) globalGson2.fromJson(globalGson2.toJson(linkedHashMap), new TypeToken<TwitterAuthResult.Success>() { // from class: com.iMe.ui.twitter.auth.TwitterAuthPresenter$processAuthResult$$inlined$toDataClass$default$1
                }.getType());
            }
            if ((failure instanceof TwitterAuthResult.Failure) && Intrinsics.areEqual(((TwitterAuthResult.Failure) failure).getMessage(), FirebaseFunctionsErrorHandler.TwitterErrorStatus.NO_OAUTH_ACCESS_GRANTED_ERROR.name())) {
                failure = TwitterAuthResult.Cancelled.INSTANCE;
            }
            ((TwitterAuthView) getViewState()).onAuthResult(failure);
        }
        failure = new TwitterAuthResult.Failure(this.resourceManager.getString(C3242R.string.common_error_unexpected));
        if (failure instanceof TwitterAuthResult.Failure) {
            failure = TwitterAuthResult.Cancelled.INSTANCE;
        }
        ((TwitterAuthView) getViewState()).onAuthResult(failure);
    }

    /* compiled from: TwitterAuthPresenter.kt */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
