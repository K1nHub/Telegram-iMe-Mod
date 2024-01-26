package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3183N implements InterfaceC2821l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1287a;

    private /* synthetic */ C3183N(IntConsumer intConsumer) {
        this.f1287a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2821l m239b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3184O ? ((C3184O) intConsumer).f1288a : new C3183N(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public /* synthetic */ void accept(int i) {
        this.f1287a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public /* synthetic */ InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        return m239b(this.f1287a.andThen(C3184O.m237a(interfaceC2821l)));
    }
}
