package p033j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC3167e {

    /* renamed from: a */
    protected final int f1026a;

    /* renamed from: b */
    protected int f1027b;

    /* renamed from: c */
    protected int f1028c;

    /* renamed from: d */
    protected long[] f1029d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3167e() {
        this.f1026a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3167e(int i) {
        if (i >= 0) {
            this.f1026a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f1028c;
        return i == 0 ? this.f1027b : this.f1029d[i] + this.f1027b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m434s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f1026a : Math.min((this.f1026a + i) - 1, 30));
    }
}
