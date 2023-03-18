package p034j$.util.stream;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C2794f1 extends AbstractC2818j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC2824k1 f939c;

    /* renamed from: d */
    final /* synthetic */ Predicate f940d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2794f1(EnumC2824k1 enumC2824k1, Predicate predicate) {
        super(enumC2824k1);
        this.f939c = enumC2824k1;
        this.f940d = predicate;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f969a) {
            return;
        }
        boolean test = this.f940d.test(obj);
        z = this.f939c.f975a;
        if (test == z) {
            this.f969a = true;
            z2 = this.f939c.f976b;
            this.f970b = z2;
        }
    }
}
