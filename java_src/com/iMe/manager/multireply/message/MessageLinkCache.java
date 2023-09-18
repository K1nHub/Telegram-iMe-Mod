package com.iMe.manager.multireply.message;

import io.reactivex.Observable;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: MessageLinkCache.kt */
/* loaded from: classes4.dex */
public final class MessageLinkCache {
    private final Map<Long, String> chatRootLinkCache = new LinkedHashMap();

    public final MessageLinkPattern writeLinkToCache(String link, int i, long j) {
        String replace$default;
        Intrinsics.checkNotNullParameter(link, "link");
        Long valueOf = Long.valueOf(j);
        Map<Long, String> map = this.chatRootLinkCache;
        replace$default = StringsKt__StringsJVMKt.replace$default(link, String.valueOf(i), "{#}", false, 4, (Object) null);
        map.put(valueOf, replace$default);
        MessageLinkPattern requestPatternFromCache = requestPatternFromCache(j);
        Intrinsics.checkNotNull(requestPatternFromCache);
        return requestPatternFromCache;
    }

    public final Observable<MessageLinkPattern> getLinkPatternFromCache(long j) {
        MessageLinkPattern requestPatternFromCache = requestPatternFromCache(j);
        Observable<MessageLinkPattern> just = requestPatternFromCache != null ? Observable.just(requestPatternFromCache) : null;
        if (just == null) {
            Observable<MessageLinkPattern> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty()");
            return empty;
        }
        return just;
    }

    private final MessageLinkPattern requestPatternFromCache(long j) {
        String str = this.chatRootLinkCache.get(Long.valueOf(j));
        if (str == null) {
            return null;
        }
        return new MessageLinkPattern("{#}", str);
    }
}
