package org.koin.core.scope;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope$close$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Scope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$close$1(Scope scope) {
        super(0);
        this.this$0 = scope;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ArrayList<ScopeCallback> arrayList;
        ArrayList arrayList2;
        Logger logger = this.this$0.get_koin().getLogger();
        String str = "|- (-) Scope - id:'" + this.this$0.getId() + '\'';
        Level level = Level.DEBUG;
        if (logger.isAt(level)) {
            logger.display(level, str);
        }
        arrayList = this.this$0._callbacks;
        Scope scope = this.this$0;
        for (ScopeCallback scopeCallback : arrayList) {
            scopeCallback.onScopeClose(scope);
        }
        arrayList2 = this.this$0._callbacks;
        arrayList2.clear();
        this.this$0.set_source(null);
        this.this$0._closed = true;
        this.this$0.get_koin().getScopeRegistry().deleteScope$koin_core(this.this$0);
    }
}
