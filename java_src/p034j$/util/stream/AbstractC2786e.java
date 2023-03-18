package p034j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC2786e {

    /* renamed from: a */
    protected final int f927a;

    /* renamed from: b */
    protected int f928b;

    /* renamed from: c */
    protected int f929c;

    /* renamed from: d */
    protected long[] f930d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2786e() {
        this.f927a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2786e(int i) {
        if (i >= 0) {
            this.f927a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f929c;
        return i == 0 ? this.f928b : this.f930d[i] + this.f928b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m431s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f927a : Math.min((this.f927a + i) - 1, 30));
    }
}
