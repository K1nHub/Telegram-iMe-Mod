package com.iMe.services;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: FilteredChatParticipantsProcessingService.kt */
/* renamed from: com.iMe.services.FilteredChatParticipantsProcessingService$onAllParticipantsLoaded$1 */
/* loaded from: classes3.dex */
final class C1617x82e66c83 extends Lambda implements Function1<TLRPC$User, Boolean> {
    public static final C1617x82e66c83 INSTANCE = new C1617x82e66c83();

    C1617x82e66c83() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TLRPC$User it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!UserObject.isDeleted(it));
    }
}
