package com.smedialink.bots.data.repository;

import com.google.firebase.firestore.QuerySnapshot;
import com.smedialink.bots.domain.exception.EmptySnapshotException;
import io.reactivex.SingleEmitter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository$getTagsInfo$1$2 extends Lambda implements Function1<QuerySnapshot, Unit> {
    final /* synthetic */ SingleEmitter<QuerySnapshot> $emitter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsRepository$getTagsInfo$1$2(SingleEmitter<QuerySnapshot> singleEmitter) {
        super(1);
        this.$emitter = singleEmitter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(QuerySnapshot querySnapshot) {
        invoke2(querySnapshot);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(QuerySnapshot querySnapshot) {
        if (querySnapshot != null) {
            this.$emitter.onSuccess(querySnapshot);
        } else {
            this.$emitter.onError(new EmptySnapshotException("Collection tags is empty"));
        }
    }
}
