package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2969U2 implements InterfaceC2933N4 {

    /* renamed from: a */
    private final EnumC3026e4 f983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2969U2(EnumC3026e4 enumC3026e4) {
        this.f983a = enumC3026e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2959S2 mo339a();

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: b */
    public /* synthetic */ int mo426b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: c */
    public Object mo425c(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        return ((InterfaceC2959S2) new C2974V2(this, abstractC3144y2, spliterator).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: d */
    public Object mo424d(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        InterfaceC2959S2 mo339a = mo339a();
        AbstractC3009c abstractC3009c = (AbstractC3009c) abstractC3144y2;
        Objects.requireNonNull(mo339a);
        abstractC3009c.mo359m0(abstractC3009c.mo351u0(mo339a), spliterator);
        return mo339a.get();
    }
}
