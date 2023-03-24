package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2969P implements InterfaceC2598l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1156a;

    private /* synthetic */ C2969P(IntConsumer intConsumer) {
        this.f1156a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2598l m180b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C2970Q ? ((C2970Q) intConsumer).f1157a : new C2969P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public /* synthetic */ void accept(int i) {
        this.f1156a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        return m180b(this.f1156a.andThen(C2970Q.m178a(interfaceC2598l)));
    }
}
