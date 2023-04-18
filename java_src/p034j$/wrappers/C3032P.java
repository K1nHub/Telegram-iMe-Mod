package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3032P implements InterfaceC2661l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1156a;

    private /* synthetic */ C3032P(IntConsumer intConsumer) {
        this.f1156a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2661l m161b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3033Q ? ((C3033Q) intConsumer).f1157a : new C3032P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public /* synthetic */ void accept(int i) {
        this.f1156a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        return m161b(this.f1156a.andThen(C3033Q.m159a(interfaceC2661l)));
    }
}
