package com.iMe.feature.socialMedias.auth;

import android.net.Uri;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.storage.data.network.handlers.model.GlobalApiErrorCode;
import com.iMe.storage.data.utils.extentions.GsonExtKt;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: SocialAuthResultMapper.kt */
/* loaded from: classes3.dex */
public final class SocialAuthResultMapperKt {
    public static final SocialAuthResult toAuthResult(Uri uri) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        SocialAuthResult failure;
        SocialAuthResult socialAuthResult;
        SocialAuthResult failure2;
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        Intrinsics.checkNotNullExpressionValue(queryParameterNames, "currentUri.queryParameterNames");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(queryParameterNames, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : queryParameterNames) {
            String queryParameter = uri.getQueryParameter((String) obj);
            if (queryParameter == null) {
                queryParameter = "";
            }
            linkedHashMap.put(obj, queryParameter);
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (Intrinsics.areEqual(lastPathSegment, SocialAuthStatus.FAIL.getStatus())) {
            Gson globalGson = GsonExtKt.getGlobalGson();
            failure = (SocialAuthResult) globalGson.fromJson(globalGson.toJson(linkedHashMap), new TypeToken<SocialAuthResult.Failure>() { // from class: com.iMe.feature.socialMedias.auth.SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$1
            }.getType());
        } else if (Intrinsics.areEqual(lastPathSegment, SocialAuthStatus.SUCCESS.getStatus())) {
            Gson globalGson2 = GsonExtKt.getGlobalGson();
            failure = (SocialAuthResult) globalGson2.fromJson(globalGson2.toJson(linkedHashMap), new TypeToken<SocialAuthResult.Success>() { // from class: com.iMe.feature.socialMedias.auth.SocialAuthResultMapperKt$toAuthResult$$inlined$toDataClass$default$2
            }.getType());
        } else {
            failure = new SocialAuthResult.Failure("ProcessAuthResult failed");
        }
        if (failure instanceof SocialAuthResult.Success) {
            SocialAuthResult.Success success = (SocialAuthResult.Success) failure;
            String status = success.getStatus();
            if (Intrinsics.areEqual(status, SocialAuthStatus.ACTIVE.getStatus())) {
                socialAuthResult = new SocialAuthResult.Success(null, 0L, 3, null);
            } else {
                if (Intrinsics.areEqual(status, SocialAuthStatus.VERIFICATION.getStatus())) {
                    failure2 = new SocialAuthResult.Verification(success.getSocialId());
                } else if (Intrinsics.areEqual(status, SocialAuthStatus.VALIDATION.getStatus())) {
                    failure2 = new SocialAuthResult.Verification(success.getSocialId());
                } else {
                    socialAuthResult = new SocialAuthResult.Success(null, 0L, 3, null);
                }
                socialAuthResult = failure2;
            }
        } else if (failure instanceof SocialAuthResult.Failure) {
            failure2 = new SocialAuthResult.Failure(((SocialAuthResult.Failure) failure).getMessage());
            socialAuthResult = failure2;
        } else {
            socialAuthResult = SocialAuthResult.Cancelled.INSTANCE;
        }
        return ((socialAuthResult instanceof SocialAuthResult.Failure) && Intrinsics.areEqual(((SocialAuthResult.Failure) socialAuthResult).getMessage(), GlobalApiErrorCode.NO_OAUTH_ACCESS_GRANTED_ERROR.name())) ? SocialAuthResult.Cancelled.INSTANCE : socialAuthResult;
    }
}
