package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
/* loaded from: classes4.dex */
public class RIPEMD160Digest extends GeneralDigest {

    /* renamed from: H0 */
    private int f1252H0;

    /* renamed from: H1 */
    private int f1253H1;

    /* renamed from: H2 */
    private int f1254H2;

    /* renamed from: H3 */
    private int f1255H3;

    /* renamed from: H4 */
    private int f1256H4;

    /* renamed from: X */
    private int[] f1257X;
    private int xOff;

    public RIPEMD160Digest() {
        this.f1257X = new int[16];
        reset();
    }

    public RIPEMD160Digest(RIPEMD160Digest rIPEMD160Digest) {
        super(rIPEMD160Digest);
        this.f1257X = new int[16];
        copyIn(rIPEMD160Digest);
    }

    /* renamed from: RL */
    private int m84RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    private void copyIn(RIPEMD160Digest rIPEMD160Digest) {
        super.copyIn((GeneralDigest) rIPEMD160Digest);
        this.f1252H0 = rIPEMD160Digest.f1252H0;
        this.f1253H1 = rIPEMD160Digest.f1253H1;
        this.f1254H2 = rIPEMD160Digest.f1254H2;
        this.f1255H3 = rIPEMD160Digest.f1255H3;
        this.f1256H4 = rIPEMD160Digest.f1256H4;
        int[] iArr = rIPEMD160Digest.f1257X;
        System.arraycopy(iArr, 0, this.f1257X, 0, iArr.length);
        this.xOff = rIPEMD160Digest.xOff;
    }

    /* renamed from: f1 */
    private int m83f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: f2 */
    private int m82f2(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* renamed from: f3 */
    private int m81f3(int i, int i2, int i3) {
        return (i | (~i2)) ^ i3;
    }

    /* renamed from: f4 */
    private int m80f4(int i, int i2, int i3) {
        return (i & i3) | (i2 & (~i3));
    }

    /* renamed from: f5 */
    private int m79f5(int i, int i2, int i3) {
        return i ^ (i2 | (~i3));
    }

    private void unpackWord(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new RIPEMD160Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        unpackWord(this.f1252H0, bArr, i);
        unpackWord(this.f1253H1, bArr, i + 4);
        unpackWord(this.f1254H2, bArr, i + 8);
        unpackWord(this.f1255H3, bArr, i + 12);
        unpackWord(this.f1256H4, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD160";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        int i = this.f1252H0;
        int i2 = this.f1253H1;
        int i3 = this.f1254H2;
        int i4 = this.f1255H3;
        int i5 = this.f1256H4;
        int m84RL = m84RL(m83f1(i2, i3, i4) + i + this.f1257X[0], 11) + i5;
        int m84RL2 = m84RL(i3, 10);
        int m84RL3 = m84RL(m83f1(m84RL, i2, m84RL2) + i5 + this.f1257X[1], 14) + i4;
        int m84RL4 = m84RL(i2, 10);
        int m84RL5 = m84RL(m83f1(m84RL3, m84RL, m84RL4) + i4 + this.f1257X[2], 15) + m84RL2;
        int m84RL6 = m84RL(m84RL, 10);
        int m84RL7 = m84RL(m84RL2 + m83f1(m84RL5, m84RL3, m84RL6) + this.f1257X[3], 12) + m84RL4;
        int m84RL8 = m84RL(m84RL3, 10);
        int m84RL9 = m84RL(m84RL4 + m83f1(m84RL7, m84RL5, m84RL8) + this.f1257X[4], 5) + m84RL6;
        int m84RL10 = m84RL(m84RL5, 10);
        int m84RL11 = m84RL(m84RL6 + m83f1(m84RL9, m84RL7, m84RL10) + this.f1257X[5], 8) + m84RL8;
        int m84RL12 = m84RL(m84RL7, 10);
        int m84RL13 = m84RL(m84RL8 + m83f1(m84RL11, m84RL9, m84RL12) + this.f1257X[6], 7) + m84RL10;
        int m84RL14 = m84RL(m84RL9, 10);
        int m84RL15 = m84RL(m84RL10 + m83f1(m84RL13, m84RL11, m84RL14) + this.f1257X[7], 9) + m84RL12;
        int m84RL16 = m84RL(m84RL11, 10);
        int m84RL17 = m84RL(m84RL12 + m83f1(m84RL15, m84RL13, m84RL16) + this.f1257X[8], 11) + m84RL14;
        int m84RL18 = m84RL(m84RL13, 10);
        int m84RL19 = m84RL(m84RL14 + m83f1(m84RL17, m84RL15, m84RL18) + this.f1257X[9], 13) + m84RL16;
        int m84RL20 = m84RL(m84RL15, 10);
        int m84RL21 = m84RL(m84RL16 + m83f1(m84RL19, m84RL17, m84RL20) + this.f1257X[10], 14) + m84RL18;
        int m84RL22 = m84RL(m84RL17, 10);
        int m84RL23 = m84RL(m84RL18 + m83f1(m84RL21, m84RL19, m84RL22) + this.f1257X[11], 15) + m84RL20;
        int m84RL24 = m84RL(m84RL19, 10);
        int m84RL25 = m84RL(m84RL20 + m83f1(m84RL23, m84RL21, m84RL24) + this.f1257X[12], 6) + m84RL22;
        int m84RL26 = m84RL(m84RL21, 10);
        int m84RL27 = m84RL(m84RL22 + m83f1(m84RL25, m84RL23, m84RL26) + this.f1257X[13], 7) + m84RL24;
        int m84RL28 = m84RL(m84RL23, 10);
        int m84RL29 = m84RL(m84RL24 + m83f1(m84RL27, m84RL25, m84RL28) + this.f1257X[14], 9) + m84RL26;
        int m84RL30 = m84RL(m84RL25, 10);
        int m84RL31 = m84RL(m84RL26 + m83f1(m84RL29, m84RL27, m84RL30) + this.f1257X[15], 8) + m84RL28;
        int m84RL32 = m84RL(m84RL27, 10);
        int m84RL33 = m84RL(i + m79f5(i2, i3, i4) + this.f1257X[5] + 1352829926, 8) + i5;
        int m84RL34 = m84RL(i3, 10);
        int m84RL35 = m84RL(i5 + m79f5(m84RL33, i2, m84RL34) + this.f1257X[14] + 1352829926, 9) + i4;
        int m84RL36 = m84RL(i2, 10);
        int m84RL37 = m84RL(i4 + m79f5(m84RL35, m84RL33, m84RL36) + this.f1257X[7] + 1352829926, 9) + m84RL34;
        int m84RL38 = m84RL(m84RL33, 10);
        int m84RL39 = m84RL(m84RL34 + m79f5(m84RL37, m84RL35, m84RL38) + this.f1257X[0] + 1352829926, 11) + m84RL36;
        int m84RL40 = m84RL(m84RL35, 10);
        int m84RL41 = m84RL(m84RL36 + m79f5(m84RL39, m84RL37, m84RL40) + this.f1257X[9] + 1352829926, 13) + m84RL38;
        int m84RL42 = m84RL(m84RL37, 10);
        int m84RL43 = m84RL(m84RL38 + m79f5(m84RL41, m84RL39, m84RL42) + this.f1257X[2] + 1352829926, 15) + m84RL40;
        int m84RL44 = m84RL(m84RL39, 10);
        int m84RL45 = m84RL(m84RL40 + m79f5(m84RL43, m84RL41, m84RL44) + this.f1257X[11] + 1352829926, 15) + m84RL42;
        int m84RL46 = m84RL(m84RL41, 10);
        int m84RL47 = m84RL(m84RL42 + m79f5(m84RL45, m84RL43, m84RL46) + this.f1257X[4] + 1352829926, 5) + m84RL44;
        int m84RL48 = m84RL(m84RL43, 10);
        int m84RL49 = m84RL(m84RL44 + m79f5(m84RL47, m84RL45, m84RL48) + this.f1257X[13] + 1352829926, 7) + m84RL46;
        int m84RL50 = m84RL(m84RL45, 10);
        int m84RL51 = m84RL(m84RL46 + m79f5(m84RL49, m84RL47, m84RL50) + this.f1257X[6] + 1352829926, 7) + m84RL48;
        int m84RL52 = m84RL(m84RL47, 10);
        int m84RL53 = m84RL(m84RL48 + m79f5(m84RL51, m84RL49, m84RL52) + this.f1257X[15] + 1352829926, 8) + m84RL50;
        int m84RL54 = m84RL(m84RL49, 10);
        int m84RL55 = m84RL(m84RL50 + m79f5(m84RL53, m84RL51, m84RL54) + this.f1257X[8] + 1352829926, 11) + m84RL52;
        int m84RL56 = m84RL(m84RL51, 10);
        int m84RL57 = m84RL(m84RL52 + m79f5(m84RL55, m84RL53, m84RL56) + this.f1257X[1] + 1352829926, 14) + m84RL54;
        int m84RL58 = m84RL(m84RL53, 10);
        int m84RL59 = m84RL(m84RL54 + m79f5(m84RL57, m84RL55, m84RL58) + this.f1257X[10] + 1352829926, 14) + m84RL56;
        int m84RL60 = m84RL(m84RL55, 10);
        int m84RL61 = m84RL(m84RL56 + m79f5(m84RL59, m84RL57, m84RL60) + this.f1257X[3] + 1352829926, 12) + m84RL58;
        int m84RL62 = m84RL(m84RL57, 10);
        int m84RL63 = m84RL(m84RL58 + m79f5(m84RL61, m84RL59, m84RL62) + this.f1257X[12] + 1352829926, 6) + m84RL60;
        int m84RL64 = m84RL(m84RL59, 10);
        int m84RL65 = m84RL(m84RL28 + m82f2(m84RL31, m84RL29, m84RL32) + this.f1257X[7] + 1518500249, 7) + m84RL30;
        int m84RL66 = m84RL(m84RL29, 10);
        int m84RL67 = m84RL(m84RL30 + m82f2(m84RL65, m84RL31, m84RL66) + this.f1257X[4] + 1518500249, 6) + m84RL32;
        int m84RL68 = m84RL(m84RL31, 10);
        int m84RL69 = m84RL(m84RL32 + m82f2(m84RL67, m84RL65, m84RL68) + this.f1257X[13] + 1518500249, 8) + m84RL66;
        int m84RL70 = m84RL(m84RL65, 10);
        int m84RL71 = m84RL(m84RL66 + m82f2(m84RL69, m84RL67, m84RL70) + this.f1257X[1] + 1518500249, 13) + m84RL68;
        int m84RL72 = m84RL(m84RL67, 10);
        int m84RL73 = m84RL(m84RL68 + m82f2(m84RL71, m84RL69, m84RL72) + this.f1257X[10] + 1518500249, 11) + m84RL70;
        int m84RL74 = m84RL(m84RL69, 10);
        int m84RL75 = m84RL(m84RL70 + m82f2(m84RL73, m84RL71, m84RL74) + this.f1257X[6] + 1518500249, 9) + m84RL72;
        int m84RL76 = m84RL(m84RL71, 10);
        int m84RL77 = m84RL(m84RL72 + m82f2(m84RL75, m84RL73, m84RL76) + this.f1257X[15] + 1518500249, 7) + m84RL74;
        int m84RL78 = m84RL(m84RL73, 10);
        int m84RL79 = m84RL(m84RL74 + m82f2(m84RL77, m84RL75, m84RL78) + this.f1257X[3] + 1518500249, 15) + m84RL76;
        int m84RL80 = m84RL(m84RL75, 10);
        int m84RL81 = m84RL(m84RL76 + m82f2(m84RL79, m84RL77, m84RL80) + this.f1257X[12] + 1518500249, 7) + m84RL78;
        int m84RL82 = m84RL(m84RL77, 10);
        int m84RL83 = m84RL(m84RL78 + m82f2(m84RL81, m84RL79, m84RL82) + this.f1257X[0] + 1518500249, 12) + m84RL80;
        int m84RL84 = m84RL(m84RL79, 10);
        int m84RL85 = m84RL(m84RL80 + m82f2(m84RL83, m84RL81, m84RL84) + this.f1257X[9] + 1518500249, 15) + m84RL82;
        int m84RL86 = m84RL(m84RL81, 10);
        int m84RL87 = m84RL(m84RL82 + m82f2(m84RL85, m84RL83, m84RL86) + this.f1257X[5] + 1518500249, 9) + m84RL84;
        int m84RL88 = m84RL(m84RL83, 10);
        int m84RL89 = m84RL(m84RL84 + m82f2(m84RL87, m84RL85, m84RL88) + this.f1257X[2] + 1518500249, 11) + m84RL86;
        int m84RL90 = m84RL(m84RL85, 10);
        int m84RL91 = m84RL(m84RL86 + m82f2(m84RL89, m84RL87, m84RL90) + this.f1257X[14] + 1518500249, 7) + m84RL88;
        int m84RL92 = m84RL(m84RL87, 10);
        int m84RL93 = m84RL(m84RL88 + m82f2(m84RL91, m84RL89, m84RL92) + this.f1257X[11] + 1518500249, 13) + m84RL90;
        int m84RL94 = m84RL(m84RL89, 10);
        int m84RL95 = m84RL(m84RL90 + m82f2(m84RL93, m84RL91, m84RL94) + this.f1257X[8] + 1518500249, 12) + m84RL92;
        int m84RL96 = m84RL(m84RL91, 10);
        int m84RL97 = m84RL(m84RL60 + m80f4(m84RL63, m84RL61, m84RL64) + this.f1257X[6] + 1548603684, 9) + m84RL62;
        int m84RL98 = m84RL(m84RL61, 10);
        int m84RL99 = m84RL(m84RL62 + m80f4(m84RL97, m84RL63, m84RL98) + this.f1257X[11] + 1548603684, 13) + m84RL64;
        int m84RL100 = m84RL(m84RL63, 10);
        int m84RL101 = m84RL(m84RL64 + m80f4(m84RL99, m84RL97, m84RL100) + this.f1257X[3] + 1548603684, 15) + m84RL98;
        int m84RL102 = m84RL(m84RL97, 10);
        int m84RL103 = m84RL(m84RL98 + m80f4(m84RL101, m84RL99, m84RL102) + this.f1257X[7] + 1548603684, 7) + m84RL100;
        int m84RL104 = m84RL(m84RL99, 10);
        int m84RL105 = m84RL(m84RL100 + m80f4(m84RL103, m84RL101, m84RL104) + this.f1257X[0] + 1548603684, 12) + m84RL102;
        int m84RL106 = m84RL(m84RL101, 10);
        int m84RL107 = m84RL(m84RL102 + m80f4(m84RL105, m84RL103, m84RL106) + this.f1257X[13] + 1548603684, 8) + m84RL104;
        int m84RL108 = m84RL(m84RL103, 10);
        int m84RL109 = m84RL(m84RL104 + m80f4(m84RL107, m84RL105, m84RL108) + this.f1257X[5] + 1548603684, 9) + m84RL106;
        int m84RL110 = m84RL(m84RL105, 10);
        int m84RL111 = m84RL(m84RL106 + m80f4(m84RL109, m84RL107, m84RL110) + this.f1257X[10] + 1548603684, 11) + m84RL108;
        int m84RL112 = m84RL(m84RL107, 10);
        int m84RL113 = m84RL(m84RL108 + m80f4(m84RL111, m84RL109, m84RL112) + this.f1257X[14] + 1548603684, 7) + m84RL110;
        int m84RL114 = m84RL(m84RL109, 10);
        int m84RL115 = m84RL(m84RL110 + m80f4(m84RL113, m84RL111, m84RL114) + this.f1257X[15] + 1548603684, 7) + m84RL112;
        int m84RL116 = m84RL(m84RL111, 10);
        int m84RL117 = m84RL(m84RL112 + m80f4(m84RL115, m84RL113, m84RL116) + this.f1257X[8] + 1548603684, 12) + m84RL114;
        int m84RL118 = m84RL(m84RL113, 10);
        int m84RL119 = m84RL(m84RL114 + m80f4(m84RL117, m84RL115, m84RL118) + this.f1257X[12] + 1548603684, 7) + m84RL116;
        int m84RL120 = m84RL(m84RL115, 10);
        int m84RL121 = m84RL(m84RL116 + m80f4(m84RL119, m84RL117, m84RL120) + this.f1257X[4] + 1548603684, 6) + m84RL118;
        int m84RL122 = m84RL(m84RL117, 10);
        int m84RL123 = m84RL(m84RL118 + m80f4(m84RL121, m84RL119, m84RL122) + this.f1257X[9] + 1548603684, 15) + m84RL120;
        int m84RL124 = m84RL(m84RL119, 10);
        int m84RL125 = m84RL(m84RL120 + m80f4(m84RL123, m84RL121, m84RL124) + this.f1257X[1] + 1548603684, 13) + m84RL122;
        int m84RL126 = m84RL(m84RL121, 10);
        int m84RL127 = m84RL(m84RL122 + m80f4(m84RL125, m84RL123, m84RL126) + this.f1257X[2] + 1548603684, 11) + m84RL124;
        int m84RL128 = m84RL(m84RL123, 10);
        int m84RL129 = m84RL(m84RL92 + m81f3(m84RL95, m84RL93, m84RL96) + this.f1257X[3] + 1859775393, 11) + m84RL94;
        int m84RL130 = m84RL(m84RL93, 10);
        int m84RL131 = m84RL(m84RL94 + m81f3(m84RL129, m84RL95, m84RL130) + this.f1257X[10] + 1859775393, 13) + m84RL96;
        int m84RL132 = m84RL(m84RL95, 10);
        int m84RL133 = m84RL(m84RL96 + m81f3(m84RL131, m84RL129, m84RL132) + this.f1257X[14] + 1859775393, 6) + m84RL130;
        int m84RL134 = m84RL(m84RL129, 10);
        int m84RL135 = m84RL(m84RL130 + m81f3(m84RL133, m84RL131, m84RL134) + this.f1257X[4] + 1859775393, 7) + m84RL132;
        int m84RL136 = m84RL(m84RL131, 10);
        int m84RL137 = m84RL(m84RL132 + m81f3(m84RL135, m84RL133, m84RL136) + this.f1257X[9] + 1859775393, 14) + m84RL134;
        int m84RL138 = m84RL(m84RL133, 10);
        int m84RL139 = m84RL(m84RL134 + m81f3(m84RL137, m84RL135, m84RL138) + this.f1257X[15] + 1859775393, 9) + m84RL136;
        int m84RL140 = m84RL(m84RL135, 10);
        int m84RL141 = m84RL(m84RL136 + m81f3(m84RL139, m84RL137, m84RL140) + this.f1257X[8] + 1859775393, 13) + m84RL138;
        int m84RL142 = m84RL(m84RL137, 10);
        int m84RL143 = m84RL(m84RL138 + m81f3(m84RL141, m84RL139, m84RL142) + this.f1257X[1] + 1859775393, 15) + m84RL140;
        int m84RL144 = m84RL(m84RL139, 10);
        int m84RL145 = m84RL(m84RL140 + m81f3(m84RL143, m84RL141, m84RL144) + this.f1257X[2] + 1859775393, 14) + m84RL142;
        int m84RL146 = m84RL(m84RL141, 10);
        int m84RL147 = m84RL(m84RL142 + m81f3(m84RL145, m84RL143, m84RL146) + this.f1257X[7] + 1859775393, 8) + m84RL144;
        int m84RL148 = m84RL(m84RL143, 10);
        int m84RL149 = m84RL(m84RL144 + m81f3(m84RL147, m84RL145, m84RL148) + this.f1257X[0] + 1859775393, 13) + m84RL146;
        int m84RL150 = m84RL(m84RL145, 10);
        int m84RL151 = m84RL(m84RL146 + m81f3(m84RL149, m84RL147, m84RL150) + this.f1257X[6] + 1859775393, 6) + m84RL148;
        int m84RL152 = m84RL(m84RL147, 10);
        int m84RL153 = m84RL(m84RL148 + m81f3(m84RL151, m84RL149, m84RL152) + this.f1257X[13] + 1859775393, 5) + m84RL150;
        int m84RL154 = m84RL(m84RL149, 10);
        int m84RL155 = m84RL(m84RL150 + m81f3(m84RL153, m84RL151, m84RL154) + this.f1257X[11] + 1859775393, 12) + m84RL152;
        int m84RL156 = m84RL(m84RL151, 10);
        int m84RL157 = m84RL(m84RL152 + m81f3(m84RL155, m84RL153, m84RL156) + this.f1257X[5] + 1859775393, 7) + m84RL154;
        int m84RL158 = m84RL(m84RL153, 10);
        int m84RL159 = m84RL(m84RL154 + m81f3(m84RL157, m84RL155, m84RL158) + this.f1257X[12] + 1859775393, 5) + m84RL156;
        int m84RL160 = m84RL(m84RL155, 10);
        int m84RL161 = m84RL(m84RL124 + m81f3(m84RL127, m84RL125, m84RL128) + this.f1257X[15] + 1836072691, 9) + m84RL126;
        int m84RL162 = m84RL(m84RL125, 10);
        int m84RL163 = m84RL(m84RL126 + m81f3(m84RL161, m84RL127, m84RL162) + this.f1257X[5] + 1836072691, 7) + m84RL128;
        int m84RL164 = m84RL(m84RL127, 10);
        int m84RL165 = m84RL(m84RL128 + m81f3(m84RL163, m84RL161, m84RL164) + this.f1257X[1] + 1836072691, 15) + m84RL162;
        int m84RL166 = m84RL(m84RL161, 10);
        int m84RL167 = m84RL(m84RL162 + m81f3(m84RL165, m84RL163, m84RL166) + this.f1257X[3] + 1836072691, 11) + m84RL164;
        int m84RL168 = m84RL(m84RL163, 10);
        int m84RL169 = m84RL(m84RL164 + m81f3(m84RL167, m84RL165, m84RL168) + this.f1257X[7] + 1836072691, 8) + m84RL166;
        int m84RL170 = m84RL(m84RL165, 10);
        int m84RL171 = m84RL(m84RL166 + m81f3(m84RL169, m84RL167, m84RL170) + this.f1257X[14] + 1836072691, 6) + m84RL168;
        int m84RL172 = m84RL(m84RL167, 10);
        int m84RL173 = m84RL(m84RL168 + m81f3(m84RL171, m84RL169, m84RL172) + this.f1257X[6] + 1836072691, 6) + m84RL170;
        int m84RL174 = m84RL(m84RL169, 10);
        int m84RL175 = m84RL(m84RL170 + m81f3(m84RL173, m84RL171, m84RL174) + this.f1257X[9] + 1836072691, 14) + m84RL172;
        int m84RL176 = m84RL(m84RL171, 10);
        int m84RL177 = m84RL(m84RL172 + m81f3(m84RL175, m84RL173, m84RL176) + this.f1257X[11] + 1836072691, 12) + m84RL174;
        int m84RL178 = m84RL(m84RL173, 10);
        int m84RL179 = m84RL(m84RL174 + m81f3(m84RL177, m84RL175, m84RL178) + this.f1257X[8] + 1836072691, 13) + m84RL176;
        int m84RL180 = m84RL(m84RL175, 10);
        int m84RL181 = m84RL(m84RL176 + m81f3(m84RL179, m84RL177, m84RL180) + this.f1257X[12] + 1836072691, 5) + m84RL178;
        int m84RL182 = m84RL(m84RL177, 10);
        int m84RL183 = m84RL(m84RL178 + m81f3(m84RL181, m84RL179, m84RL182) + this.f1257X[2] + 1836072691, 14) + m84RL180;
        int m84RL184 = m84RL(m84RL179, 10);
        int m84RL185 = m84RL(m84RL180 + m81f3(m84RL183, m84RL181, m84RL184) + this.f1257X[10] + 1836072691, 13) + m84RL182;
        int m84RL186 = m84RL(m84RL181, 10);
        int m84RL187 = m84RL(m84RL182 + m81f3(m84RL185, m84RL183, m84RL186) + this.f1257X[0] + 1836072691, 13) + m84RL184;
        int m84RL188 = m84RL(m84RL183, 10);
        int m84RL189 = m84RL(m84RL184 + m81f3(m84RL187, m84RL185, m84RL188) + this.f1257X[4] + 1836072691, 7) + m84RL186;
        int m84RL190 = m84RL(m84RL185, 10);
        int m84RL191 = m84RL(m84RL186 + m81f3(m84RL189, m84RL187, m84RL190) + this.f1257X[13] + 1836072691, 5) + m84RL188;
        int m84RL192 = m84RL(m84RL187, 10);
        int m84RL193 = m84RL(((m84RL156 + m80f4(m84RL159, m84RL157, m84RL160)) + this.f1257X[1]) - 1894007588, 11) + m84RL158;
        int m84RL194 = m84RL(m84RL157, 10);
        int m84RL195 = m84RL(((m84RL158 + m80f4(m84RL193, m84RL159, m84RL194)) + this.f1257X[9]) - 1894007588, 12) + m84RL160;
        int m84RL196 = m84RL(m84RL159, 10);
        int m84RL197 = m84RL(((m84RL160 + m80f4(m84RL195, m84RL193, m84RL196)) + this.f1257X[11]) - 1894007588, 14) + m84RL194;
        int m84RL198 = m84RL(m84RL193, 10);
        int m84RL199 = m84RL(((m84RL194 + m80f4(m84RL197, m84RL195, m84RL198)) + this.f1257X[10]) - 1894007588, 15) + m84RL196;
        int m84RL200 = m84RL(m84RL195, 10);
        int m84RL201 = m84RL(((m84RL196 + m80f4(m84RL199, m84RL197, m84RL200)) + this.f1257X[0]) - 1894007588, 14) + m84RL198;
        int m84RL202 = m84RL(m84RL197, 10);
        int m84RL203 = m84RL(((m84RL198 + m80f4(m84RL201, m84RL199, m84RL202)) + this.f1257X[8]) - 1894007588, 15) + m84RL200;
        int m84RL204 = m84RL(m84RL199, 10);
        int m84RL205 = m84RL(((m84RL200 + m80f4(m84RL203, m84RL201, m84RL204)) + this.f1257X[12]) - 1894007588, 9) + m84RL202;
        int m84RL206 = m84RL(m84RL201, 10);
        int m84RL207 = m84RL(((m84RL202 + m80f4(m84RL205, m84RL203, m84RL206)) + this.f1257X[4]) - 1894007588, 8) + m84RL204;
        int m84RL208 = m84RL(m84RL203, 10);
        int m84RL209 = m84RL(((m84RL204 + m80f4(m84RL207, m84RL205, m84RL208)) + this.f1257X[13]) - 1894007588, 9) + m84RL206;
        int m84RL210 = m84RL(m84RL205, 10);
        int m84RL211 = m84RL(((m84RL206 + m80f4(m84RL209, m84RL207, m84RL210)) + this.f1257X[3]) - 1894007588, 14) + m84RL208;
        int m84RL212 = m84RL(m84RL207, 10);
        int m84RL213 = m84RL(((m84RL208 + m80f4(m84RL211, m84RL209, m84RL212)) + this.f1257X[7]) - 1894007588, 5) + m84RL210;
        int m84RL214 = m84RL(m84RL209, 10);
        int m84RL215 = m84RL(((m84RL210 + m80f4(m84RL213, m84RL211, m84RL214)) + this.f1257X[15]) - 1894007588, 6) + m84RL212;
        int m84RL216 = m84RL(m84RL211, 10);
        int m84RL217 = m84RL(((m84RL212 + m80f4(m84RL215, m84RL213, m84RL216)) + this.f1257X[14]) - 1894007588, 8) + m84RL214;
        int m84RL218 = m84RL(m84RL213, 10);
        int m84RL219 = m84RL(((m84RL214 + m80f4(m84RL217, m84RL215, m84RL218)) + this.f1257X[5]) - 1894007588, 6) + m84RL216;
        int m84RL220 = m84RL(m84RL215, 10);
        int m84RL221 = m84RL(((m84RL216 + m80f4(m84RL219, m84RL217, m84RL220)) + this.f1257X[6]) - 1894007588, 5) + m84RL218;
        int m84RL222 = m84RL(m84RL217, 10);
        int m84RL223 = m84RL(((m84RL218 + m80f4(m84RL221, m84RL219, m84RL222)) + this.f1257X[2]) - 1894007588, 12) + m84RL220;
        int m84RL224 = m84RL(m84RL219, 10);
        int m84RL225 = m84RL(m84RL188 + m82f2(m84RL191, m84RL189, m84RL192) + this.f1257X[8] + 2053994217, 15) + m84RL190;
        int m84RL226 = m84RL(m84RL189, 10);
        int m84RL227 = m84RL(m84RL190 + m82f2(m84RL225, m84RL191, m84RL226) + this.f1257X[6] + 2053994217, 5) + m84RL192;
        int m84RL228 = m84RL(m84RL191, 10);
        int m84RL229 = m84RL(m84RL192 + m82f2(m84RL227, m84RL225, m84RL228) + this.f1257X[4] + 2053994217, 8) + m84RL226;
        int m84RL230 = m84RL(m84RL225, 10);
        int m84RL231 = m84RL(m84RL226 + m82f2(m84RL229, m84RL227, m84RL230) + this.f1257X[1] + 2053994217, 11) + m84RL228;
        int m84RL232 = m84RL(m84RL227, 10);
        int m84RL233 = m84RL(m84RL228 + m82f2(m84RL231, m84RL229, m84RL232) + this.f1257X[3] + 2053994217, 14) + m84RL230;
        int m84RL234 = m84RL(m84RL229, 10);
        int m84RL235 = m84RL(m84RL230 + m82f2(m84RL233, m84RL231, m84RL234) + this.f1257X[11] + 2053994217, 14) + m84RL232;
        int m84RL236 = m84RL(m84RL231, 10);
        int m84RL237 = m84RL(m84RL232 + m82f2(m84RL235, m84RL233, m84RL236) + this.f1257X[15] + 2053994217, 6) + m84RL234;
        int m84RL238 = m84RL(m84RL233, 10);
        int m84RL239 = m84RL(m84RL234 + m82f2(m84RL237, m84RL235, m84RL238) + this.f1257X[0] + 2053994217, 14) + m84RL236;
        int m84RL240 = m84RL(m84RL235, 10);
        int m84RL241 = m84RL(m84RL236 + m82f2(m84RL239, m84RL237, m84RL240) + this.f1257X[5] + 2053994217, 6) + m84RL238;
        int m84RL242 = m84RL(m84RL237, 10);
        int m84RL243 = m84RL(m84RL238 + m82f2(m84RL241, m84RL239, m84RL242) + this.f1257X[12] + 2053994217, 9) + m84RL240;
        int m84RL244 = m84RL(m84RL239, 10);
        int m84RL245 = m84RL(m84RL240 + m82f2(m84RL243, m84RL241, m84RL244) + this.f1257X[2] + 2053994217, 12) + m84RL242;
        int m84RL246 = m84RL(m84RL241, 10);
        int m84RL247 = m84RL(m84RL242 + m82f2(m84RL245, m84RL243, m84RL246) + this.f1257X[13] + 2053994217, 9) + m84RL244;
        int m84RL248 = m84RL(m84RL243, 10);
        int m84RL249 = m84RL(m84RL244 + m82f2(m84RL247, m84RL245, m84RL248) + this.f1257X[9] + 2053994217, 12) + m84RL246;
        int m84RL250 = m84RL(m84RL245, 10);
        int m84RL251 = m84RL(m84RL246 + m82f2(m84RL249, m84RL247, m84RL250) + this.f1257X[7] + 2053994217, 5) + m84RL248;
        int m84RL252 = m84RL(m84RL247, 10);
        int m84RL253 = m84RL(m84RL248 + m82f2(m84RL251, m84RL249, m84RL252) + this.f1257X[10] + 2053994217, 15) + m84RL250;
        int m84RL254 = m84RL(m84RL249, 10);
        int m84RL255 = m84RL(m84RL250 + m82f2(m84RL253, m84RL251, m84RL254) + this.f1257X[14] + 2053994217, 8) + m84RL252;
        int m84RL256 = m84RL(m84RL251, 10);
        int m84RL257 = m84RL(((m84RL220 + m79f5(m84RL223, m84RL221, m84RL224)) + this.f1257X[4]) - 1454113458, 9) + m84RL222;
        int m84RL258 = m84RL(m84RL221, 10);
        int m84RL259 = m84RL(((m84RL222 + m79f5(m84RL257, m84RL223, m84RL258)) + this.f1257X[0]) - 1454113458, 15) + m84RL224;
        int m84RL260 = m84RL(m84RL223, 10);
        int m84RL261 = m84RL(((m84RL224 + m79f5(m84RL259, m84RL257, m84RL260)) + this.f1257X[5]) - 1454113458, 5) + m84RL258;
        int m84RL262 = m84RL(m84RL257, 10);
        int m84RL263 = m84RL(((m84RL258 + m79f5(m84RL261, m84RL259, m84RL262)) + this.f1257X[9]) - 1454113458, 11) + m84RL260;
        int m84RL264 = m84RL(m84RL259, 10);
        int m84RL265 = m84RL(((m84RL260 + m79f5(m84RL263, m84RL261, m84RL264)) + this.f1257X[7]) - 1454113458, 6) + m84RL262;
        int m84RL266 = m84RL(m84RL261, 10);
        int m84RL267 = m84RL(((m84RL262 + m79f5(m84RL265, m84RL263, m84RL266)) + this.f1257X[12]) - 1454113458, 8) + m84RL264;
        int m84RL268 = m84RL(m84RL263, 10);
        int m84RL269 = m84RL(((m84RL264 + m79f5(m84RL267, m84RL265, m84RL268)) + this.f1257X[2]) - 1454113458, 13) + m84RL266;
        int m84RL270 = m84RL(m84RL265, 10);
        int m84RL271 = m84RL(((m84RL266 + m79f5(m84RL269, m84RL267, m84RL270)) + this.f1257X[10]) - 1454113458, 12) + m84RL268;
        int m84RL272 = m84RL(m84RL267, 10);
        int m84RL273 = m84RL(((m84RL268 + m79f5(m84RL271, m84RL269, m84RL272)) + this.f1257X[14]) - 1454113458, 5) + m84RL270;
        int m84RL274 = m84RL(m84RL269, 10);
        int m84RL275 = m84RL(((m84RL270 + m79f5(m84RL273, m84RL271, m84RL274)) + this.f1257X[1]) - 1454113458, 12) + m84RL272;
        int m84RL276 = m84RL(m84RL271, 10);
        int m84RL277 = m84RL(((m84RL272 + m79f5(m84RL275, m84RL273, m84RL276)) + this.f1257X[3]) - 1454113458, 13) + m84RL274;
        int m84RL278 = m84RL(m84RL273, 10);
        int m84RL279 = m84RL(((m84RL274 + m79f5(m84RL277, m84RL275, m84RL278)) + this.f1257X[8]) - 1454113458, 14) + m84RL276;
        int m84RL280 = m84RL(m84RL275, 10);
        int m84RL281 = m84RL(((m84RL276 + m79f5(m84RL279, m84RL277, m84RL280)) + this.f1257X[11]) - 1454113458, 11) + m84RL278;
        int m84RL282 = m84RL(m84RL277, 10);
        int m84RL283 = m84RL(((m84RL278 + m79f5(m84RL281, m84RL279, m84RL282)) + this.f1257X[6]) - 1454113458, 8) + m84RL280;
        int m84RL284 = m84RL(m84RL279, 10);
        int m84RL285 = m84RL(((m84RL280 + m79f5(m84RL283, m84RL281, m84RL284)) + this.f1257X[15]) - 1454113458, 5) + m84RL282;
        int m84RL286 = m84RL(m84RL281, 10);
        int m84RL287 = m84RL(m84RL283, 10);
        int m84RL288 = m84RL(m84RL252 + m83f1(m84RL255, m84RL253, m84RL256) + this.f1257X[12], 8) + m84RL254;
        int m84RL289 = m84RL(m84RL253, 10);
        int m84RL290 = m84RL(m84RL254 + m83f1(m84RL288, m84RL255, m84RL289) + this.f1257X[15], 5) + m84RL256;
        int m84RL291 = m84RL(m84RL255, 10);
        int m84RL292 = m84RL(m84RL256 + m83f1(m84RL290, m84RL288, m84RL291) + this.f1257X[10], 12) + m84RL289;
        int m84RL293 = m84RL(m84RL288, 10);
        int m84RL294 = m84RL(m84RL289 + m83f1(m84RL292, m84RL290, m84RL293) + this.f1257X[4], 9) + m84RL291;
        int m84RL295 = m84RL(m84RL290, 10);
        int m84RL296 = m84RL(m84RL291 + m83f1(m84RL294, m84RL292, m84RL295) + this.f1257X[1], 12) + m84RL293;
        int m84RL297 = m84RL(m84RL292, 10);
        int m84RL298 = m84RL(m84RL293 + m83f1(m84RL296, m84RL294, m84RL297) + this.f1257X[5], 5) + m84RL295;
        int m84RL299 = m84RL(m84RL294, 10);
        int m84RL300 = m84RL(m84RL295 + m83f1(m84RL298, m84RL296, m84RL299) + this.f1257X[8], 14) + m84RL297;
        int m84RL301 = m84RL(m84RL296, 10);
        int m84RL302 = m84RL(m84RL297 + m83f1(m84RL300, m84RL298, m84RL301) + this.f1257X[7], 6) + m84RL299;
        int m84RL303 = m84RL(m84RL298, 10);
        int m84RL304 = m84RL(m84RL299 + m83f1(m84RL302, m84RL300, m84RL303) + this.f1257X[6], 8) + m84RL301;
        int m84RL305 = m84RL(m84RL300, 10);
        int m84RL306 = m84RL(m84RL301 + m83f1(m84RL304, m84RL302, m84RL305) + this.f1257X[2], 13) + m84RL303;
        int m84RL307 = m84RL(m84RL302, 10);
        int m84RL308 = m84RL(m84RL303 + m83f1(m84RL306, m84RL304, m84RL307) + this.f1257X[13], 6) + m84RL305;
        int m84RL309 = m84RL(m84RL304, 10);
        int m84RL310 = m84RL(m84RL305 + m83f1(m84RL308, m84RL306, m84RL309) + this.f1257X[14], 5) + m84RL307;
        int m84RL311 = m84RL(m84RL306, 10);
        int m84RL312 = m84RL(m84RL307 + m83f1(m84RL310, m84RL308, m84RL311) + this.f1257X[0], 15) + m84RL309;
        int m84RL313 = m84RL(m84RL308, 10);
        int m84RL314 = m84RL(m84RL309 + m83f1(m84RL312, m84RL310, m84RL313) + this.f1257X[3], 13) + m84RL311;
        int m84RL315 = m84RL(m84RL310, 10);
        int m84RL316 = m84RL(m84RL311 + m83f1(m84RL314, m84RL312, m84RL315) + this.f1257X[9], 11) + m84RL313;
        int m84RL317 = m84RL(m84RL312, 10);
        int m84RL318 = m84RL(m84RL313 + m83f1(m84RL316, m84RL314, m84RL317) + this.f1257X[11], 11) + m84RL315;
        this.f1253H1 = this.f1254H2 + m84RL287 + m84RL317;
        this.f1254H2 = this.f1255H3 + m84RL286 + m84RL315;
        this.f1255H3 = this.f1256H4 + m84RL284 + m84RL318;
        this.f1256H4 = this.f1252H0 + m84RL(((m84RL282 + m79f5(m84RL285, m84RL283, m84RL286)) + this.f1257X[13]) - 1454113458, 6) + m84RL284 + m84RL316;
        this.f1252H0 = m84RL(m84RL314, 10) + m84RL285 + this.f1253H1;
        this.xOff = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f1257X;
            if (i6 == iArr.length) {
                return;
            }
            iArr[i6] = 0;
            i6++;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f1257X;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        int[] iArr = this.f1257X;
        int i2 = this.xOff;
        int i3 = i2 + 1;
        this.xOff = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f1252H0 = 1732584193;
        this.f1253H1 = -271733879;
        this.f1254H2 = -1732584194;
        this.f1255H3 = 271733878;
        this.f1256H4 = -1009589776;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f1257X;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((RIPEMD160Digest) memoable);
    }
}
