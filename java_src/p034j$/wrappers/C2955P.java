package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2955P implements InterfaceC2584l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1155a;

    private /* synthetic */ C2955P(IntConsumer intConsumer) {
        this.f1155a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2584l m181b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C2956Q ? ((C2956Q) intConsumer).f1156a : new C2955P(intConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public /* synthetic */ void accept(int i) {
        this.f1155a.accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        return m181b(this.f1155a.andThen(C2956Q.m179a(interfaceC2584l)));
    }
}
