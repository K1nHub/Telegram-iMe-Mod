package com.iMe.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LockedSectionsController.kt */
/* loaded from: classes3.dex */
public final class LockedSectionsController$Companion$getInstance$1 extends Lambda implements Function1<Integer, LockedSectionsController> {
    final /* synthetic */ int $accountIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LockedSectionsController$Companion$getInstance$1(int i) {
        super(1);
        this.$accountIndex = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final LockedSectionsController invoke(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new LockedSectionsController(this.$accountIndex);
    }
}