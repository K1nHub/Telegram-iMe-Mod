package p035j$.wrappers;

import java.util.function.LongConsumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.wrappers.f0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3066f0 implements LongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2679q f1182a;

    private /* synthetic */ C3066f0(InterfaceC2679q interfaceC2679q) {
        this.f1182a = interfaceC2679q;
    }

    /* renamed from: a */
    public static /* synthetic */ LongConsumer m147a(InterfaceC2679q interfaceC2679q) {
        if (interfaceC2679q == null) {
            return null;
        }
        return interfaceC2679q instanceof C3064e0 ? ((C3064e0) interfaceC2679q).f1180a : new C3066f0(interfaceC2679q);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        this.f1182a.accept(j);
    }

    @Override // java.util.function.LongConsumer
    public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return m147a(this.f1182a.mo149f(C3064e0.m150b(longConsumer)));
    }
}
