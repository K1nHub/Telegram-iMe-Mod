package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3184N implements InterfaceC2822l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1287a;

    private /* synthetic */ C3184N(IntConsumer intConsumer) {
        this.f1287a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2822l m235b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3185O ? ((C3185O) intConsumer).f1288a : new C3184N(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public /* synthetic */ void accept(int i) {
        this.f1287a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public /* synthetic */ InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        return m235b(this.f1287a.andThen(C3185O.m233a(interfaceC2822l)));
    }
}
