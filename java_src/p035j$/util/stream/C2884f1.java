package p035j$.util.stream;

import p035j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C2884f1 extends AbstractC2908j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC2914k1 f945c;

    /* renamed from: d */
    final /* synthetic */ Predicate f946d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884f1(EnumC2914k1 enumC2914k1, Predicate predicate) {
        super(enumC2914k1);
        this.f945c = enumC2914k1;
        this.f946d = predicate;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f975a) {
            return;
        }
        boolean test = this.f946d.test(obj);
        z = this.f945c.f981a;
        if (test == z) {
            this.f975a = true;
            z2 = this.f945c.f982b;
            this.f976b = z2;
        }
    }
}
