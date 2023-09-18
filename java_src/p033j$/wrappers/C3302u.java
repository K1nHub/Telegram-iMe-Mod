package p033j$.wrappers;

import java.util.function.BinaryOperator;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3302u implements InterfaceC2871b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1295a;

    private /* synthetic */ C3302u(BinaryOperator binaryOperator) {
        this.f1295a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2871b m116a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3304v ? ((C3304v) binaryOperator).f1297a : new C3302u(binaryOperator);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3298s.m120a(this.f1295a.andThen(C3246M.m205a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1295a.apply(obj, obj2);
    }
}
