package com.iMe.services;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredChatParticipantsProcessingService.kt */
/* renamed from: com.iMe.services.FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1 */
/* loaded from: classes3.dex */
public /* synthetic */ class C1544x25afaff6 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1544x25afaff6(Object obj) {
        super(0, obj, FilteredChatParticipantsProcessingService.class, "deleteParticipant", "deleteParticipant()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((FilteredChatParticipantsProcessingService) this.receiver).deleteParticipant();
    }
}
