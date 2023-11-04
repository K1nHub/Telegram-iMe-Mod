package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3188N implements InterfaceC2826l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1287a;

    private /* synthetic */ C3188N(IntConsumer intConsumer) {
        this.f1287a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2826l m236b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3189O ? ((C3189O) intConsumer).f1288a : new C3188N(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public /* synthetic */ void accept(int i) {
        this.f1287a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public /* synthetic */ InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        return m236b(this.f1287a.andThen(C3189O.m234a(interfaceC2826l)));
    }
}
