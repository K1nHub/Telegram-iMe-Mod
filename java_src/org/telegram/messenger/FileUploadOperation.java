package org.telegram.messenger;

import android.content.SharedPreferences;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$InputEncryptedFile;
import org.telegram.tgnet.TLRPC$InputFile;
/* loaded from: classes4.dex */
public class FileUploadOperation {
    private static final int initialRequestsCount = 8;
    private static final int initialRequestsSlowNetworkCount = 1;
    private static final int maxUploadingKBytes = 2048;
    private static final int maxUploadingSlowNetworkKBytes = 32;
    private static final int minUploadChunkSize = 128;
    private static final int minUploadChunkSlowNetworkSize = 32;
    private long availableSize;
    private int currentAccount;
    private long currentFileId;
    private int currentPartNum;
    private int currentType;
    private int currentUploadRequetsCount;
    private FileUploadOperationDelegate delegate;
    private long estimatedSize;
    private String fileKey;
    private int fingerprint;
    private boolean forceSmallFile;
    private ArrayList<byte[]> freeRequestIvs;
    private boolean isBigFile;
    private boolean isEncrypted;
    private boolean isLastPart;

    /* renamed from: iv */
    private byte[] f1529iv;
    private byte[] ivChange;
    private byte[] key;
    protected long lastProgressUpdateTime;
    private int lastSavedPartNum;
    private int maxRequestsCount;
    private boolean nextPartFirst;
    private int operationGuid;
    private SharedPreferences preferences;
    private byte[] readBuffer;
    private long readBytesCount;
    private int requestNum;
    private int saveInfoTimes;
    private boolean slowNetwork;
    private boolean started;
    private int state;
    private RandomAccessFile stream;
    private long totalFileSize;
    private int totalPartsCount;
    private boolean uploadFirstPartLater;
    private int uploadStartTime;
    private long uploadedBytesCount;
    private String uploadingFilePath;
    private int uploadChunkSize = 65536;
    private SparseIntArray requestTokens = new SparseIntArray();
    private SparseArray<UploadCachedResult> cachedResults = new SparseArray<>();
    private boolean[] recalculatedEstimatedSize = {false, false};

    /* loaded from: classes4.dex */
    public interface FileUploadOperationDelegate {
        void didChangedUploadProgress(FileUploadOperation fileUploadOperation, long j, long j2);

        void didFailedUploadingFile(FileUploadOperation fileUploadOperation);

        void didFinishUploadingFile(FileUploadOperation fileUploadOperation, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, byte[] bArr, byte[] bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class UploadCachedResult {
        private long bytesOffset;

        /* renamed from: iv */
        private byte[] f1530iv;

        private UploadCachedResult() {
        }
    }

    public FileUploadOperation(int i, String str, boolean z, long j, int i2) {
        this.currentAccount = i;
        this.uploadingFilePath = str;
        this.isEncrypted = z;
        this.estimatedSize = j;
        this.currentType = i2;
        this.uploadFirstPartLater = (j == 0 || z) ? false : true;
    }

    public long getTotalFileSize() {
        return this.totalFileSize;
    }

    public void setDelegate(FileUploadOperationDelegate fileUploadOperationDelegate) {
        this.delegate = fileUploadOperationDelegate;
    }

    public void start() {
        if (this.state != 0) {
            return;
        }
        this.state = 1;
        AutoDeleteMediaTask.lockFile(this.uploadingFilePath);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$start$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0() {
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("uploadinfo", 0);
        this.slowNetwork = ApplicationLoader.isConnectionSlow();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("start upload on slow network = " + this.slowNetwork);
        }
        int i = this.slowNetwork ? 1 : 8;
        for (int i2 = 0; i2 < i; i2++) {
            startUploadRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onNetworkChanged(final boolean z) {
        if (this.state != 1) {
            return;
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$onNetworkChanged$1(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNetworkChanged$1(boolean z) {
        if (this.slowNetwork != z) {
            this.slowNetwork = z;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("network changed to slow = " + this.slowNetwork);
            }
            int i = 0;
            while (true) {
                if (i >= this.requestTokens.size()) {
                    break;
                }
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestTokens.valueAt(i), true);
                i++;
            }
            this.requestTokens.clear();
            cleanup();
            this.isLastPart = false;
            this.nextPartFirst = false;
            this.requestNum = 0;
            this.currentPartNum = 0;
            this.readBytesCount = 0L;
            this.uploadedBytesCount = 0L;
            this.saveInfoTimes = 0;
            this.key = null;
            this.f1529iv = null;
            this.ivChange = null;
            this.currentUploadRequetsCount = 0;
            this.lastSavedPartNum = 0;
            this.uploadFirstPartLater = false;
            this.cachedResults.clear();
            this.operationGuid++;
            int i2 = this.slowNetwork ? 1 : 8;
            for (int i3 = 0; i3 < i2; i3++) {
                startUploadRequest();
            }
        }
    }

    public void cancel() {
        if (this.state == 3) {
            return;
        }
        this.state = 2;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$cancel$2();
            }
        });
        AutoDeleteMediaTask.unlockFile(this.uploadingFilePath);
        this.delegate.didFailedUploadingFile(this);
        cleanup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$2() {
        for (int i = 0; i < this.requestTokens.size(); i++) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestTokens.valueAt(i), true);
        }
    }

    private void cleanup() {
        if (this.preferences == null) {
            this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("uploadinfo", 0);
        }
        SharedPreferences.Editor edit = this.preferences.edit();
        SharedPreferences.Editor remove = edit.remove(this.fileKey + "_time");
        SharedPreferences.Editor remove2 = remove.remove(this.fileKey + "_size");
        SharedPreferences.Editor remove3 = remove2.remove(this.fileKey + "_uploaded");
        SharedPreferences.Editor remove4 = remove3.remove(this.fileKey + "_id");
        SharedPreferences.Editor remove5 = remove4.remove(this.fileKey + "_iv");
        SharedPreferences.Editor remove6 = remove5.remove(this.fileKey + "_key");
        remove6.remove(this.fileKey + "_ivc").commit();
        try {
            RandomAccessFile randomAccessFile = this.stream;
            if (randomAccessFile != null) {
                randomAccessFile.close();
                this.stream = null;
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        AutoDeleteMediaTask.unlockFile(this.uploadingFilePath);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkNewDataAvailable(final long j, final long j2, final Float f) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$checkNewDataAvailable$3(f, j2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$checkNewDataAvailable$3(java.lang.Float r7, long r8, long r10) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L43
            long r2 = r6.estimatedSize
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 == 0) goto L43
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto L43
            float r2 = r7.floatValue()
            r3 = 1061158912(0x3f400000, float:0.75)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 <= 0) goto L23
            boolean[] r2 = r6.recalculatedEstimatedSize
            boolean r5 = r2[r3]
            if (r5 != 0) goto L23
            r2[r3] = r4
            r3 = r4
        L23:
            float r2 = r7.floatValue()
            r5 = 1064514355(0x3f733333, float:0.95)
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 <= 0) goto L37
            boolean[] r2 = r6.recalculatedEstimatedSize
            boolean r5 = r2[r4]
            if (r5 != 0) goto L37
            r2[r4] = r4
            goto L38
        L37:
            r4 = r3
        L38:
            if (r4 == 0) goto L43
            float r2 = (float) r10
            float r7 = r7.floatValue()
            float r2 = r2 / r7
            long r2 = (long) r2
            r6.estimatedSize = r2
        L43:
            long r2 = r6.estimatedSize
            int r7 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r7 == 0) goto L5f
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 == 0) goto L5f
            r6.estimatedSize = r0
            r6.totalFileSize = r8
            r6.calcTotalPartsCount()
            boolean r7 = r6.uploadFirstPartLater
            if (r7 != 0) goto L5f
            boolean r7 = r6.started
            if (r7 == 0) goto L5f
            r6.storeFileUploadInfo()
        L5f:
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 <= 0) goto L64
            goto L65
        L64:
            r8 = r10
        L65:
            r6.availableSize = r8
            int r7 = r6.currentUploadRequetsCount
            int r8 = r6.maxRequestsCount
            if (r7 >= r8) goto L70
            r6.startUploadRequest()
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileUploadOperation.lambda$checkNewDataAvailable$3(java.lang.Float, long, long):void");
    }

    private void storeFileUploadInfo() {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putInt(this.fileKey + "_time", this.uploadStartTime);
        edit.putLong(this.fileKey + "_size", this.totalFileSize);
        edit.putLong(this.fileKey + "_id", this.currentFileId);
        edit.remove(this.fileKey + "_uploaded");
        if (this.isEncrypted) {
            edit.putString(this.fileKey + "_iv", Utilities.bytesToHex(this.f1529iv));
            edit.putString(this.fileKey + "_ivc", Utilities.bytesToHex(this.ivChange));
            edit.putString(this.fileKey + "_key", Utilities.bytesToHex(this.key));
        }
        edit.commit();
    }

    private void calcTotalPartsCount() {
        if (this.uploadFirstPartLater) {
            if (this.isBigFile) {
                long j = this.totalFileSize;
                int i = this.uploadChunkSize;
                this.totalPartsCount = ((int) ((((j - i) + i) - 1) / i)) + 1;
                return;
            }
            int i2 = this.uploadChunkSize;
            this.totalPartsCount = ((int) ((((this.totalFileSize - 1024) + i2) - 1) / i2)) + 1;
            return;
        }
        long j2 = this.totalFileSize;
        int i3 = this.uploadChunkSize;
        this.totalPartsCount = (int) (((j2 + i3) - 1) / i3);
    }

    public void setForceSmallFile() {
        this.forceSmallFile = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02f4 A[Catch: Exception -> 0x0542, TryCatch #2 {Exception -> 0x0542, blocks: (B:5:0x0008, B:7:0x0015, B:13:0x004e, B:15:0x0054, B:17:0x005d, B:19:0x0061, B:21:0x006a, B:22:0x006c, B:24:0x0085, B:26:0x008e, B:27:0x0097, B:31:0x00a0, B:34:0x00b9, B:36:0x00bd, B:37:0x00c0, B:38:0x00c2, B:42:0x00ca, B:44:0x00d7, B:45:0x00e1, B:47:0x00e5, B:48:0x00ef, B:52:0x0110, B:54:0x0146, B:56:0x014a, B:58:0x0152, B:60:0x0158, B:62:0x01ae, B:65:0x01e6, B:68:0x01f8, B:70:0x01fb, B:72:0x01fe, B:77:0x020e, B:79:0x0212, B:89:0x0234, B:92:0x0241, B:94:0x024c, B:96:0x0258, B:98:0x025c, B:100:0x0264, B:102:0x026f, B:105:0x0278, B:109:0x0285, B:110:0x028c, B:111:0x02a3, B:104:0x0276, B:112:0x02ad, B:114:0x02b6, B:116:0x02d2, B:118:0x02da, B:126:0x02f4, B:128:0x02f8, B:129:0x0318, B:131:0x0324, B:133:0x0328, B:135:0x0330, B:136:0x0333, B:145:0x036a, B:147:0x0376, B:149:0x037a, B:151:0x0391, B:150:0x0388, B:155:0x039e, B:157:0x03a6, B:160:0x03b3, B:162:0x03b7, B:164:0x03c2, B:166:0x03d7, B:171:0x03e7, B:173:0x03eb, B:175:0x03ef, B:177:0x03f7, B:179:0x0402, B:181:0x0406, B:183:0x040e, B:189:0x0421, B:193:0x042e, B:194:0x0435, B:196:0x0462, B:198:0x0466, B:200:0x047b, B:202:0x0482, B:204:0x049a, B:206:0x049e, B:208:0x04a2, B:209:0x04b1, B:201:0x047e, B:203:0x0488, B:185:0x0415, B:187:0x0419, B:188:0x041f, B:165:0x03cc, B:167:0x03da, B:144:0x0367, B:120:0x02dd, B:121:0x02e5, B:83:0x021e, B:16:0x0057, B:152:0x0394, B:153:0x039c, B:8:0x0026, B:138:0x0337, B:141:0x0352), top: B:228:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0376 A[Catch: Exception -> 0x0542, TryCatch #2 {Exception -> 0x0542, blocks: (B:5:0x0008, B:7:0x0015, B:13:0x004e, B:15:0x0054, B:17:0x005d, B:19:0x0061, B:21:0x006a, B:22:0x006c, B:24:0x0085, B:26:0x008e, B:27:0x0097, B:31:0x00a0, B:34:0x00b9, B:36:0x00bd, B:37:0x00c0, B:38:0x00c2, B:42:0x00ca, B:44:0x00d7, B:45:0x00e1, B:47:0x00e5, B:48:0x00ef, B:52:0x0110, B:54:0x0146, B:56:0x014a, B:58:0x0152, B:60:0x0158, B:62:0x01ae, B:65:0x01e6, B:68:0x01f8, B:70:0x01fb, B:72:0x01fe, B:77:0x020e, B:79:0x0212, B:89:0x0234, B:92:0x0241, B:94:0x024c, B:96:0x0258, B:98:0x025c, B:100:0x0264, B:102:0x026f, B:105:0x0278, B:109:0x0285, B:110:0x028c, B:111:0x02a3, B:104:0x0276, B:112:0x02ad, B:114:0x02b6, B:116:0x02d2, B:118:0x02da, B:126:0x02f4, B:128:0x02f8, B:129:0x0318, B:131:0x0324, B:133:0x0328, B:135:0x0330, B:136:0x0333, B:145:0x036a, B:147:0x0376, B:149:0x037a, B:151:0x0391, B:150:0x0388, B:155:0x039e, B:157:0x03a6, B:160:0x03b3, B:162:0x03b7, B:164:0x03c2, B:166:0x03d7, B:171:0x03e7, B:173:0x03eb, B:175:0x03ef, B:177:0x03f7, B:179:0x0402, B:181:0x0406, B:183:0x040e, B:189:0x0421, B:193:0x042e, B:194:0x0435, B:196:0x0462, B:198:0x0466, B:200:0x047b, B:202:0x0482, B:204:0x049a, B:206:0x049e, B:208:0x04a2, B:209:0x04b1, B:201:0x047e, B:203:0x0488, B:185:0x0415, B:187:0x0419, B:188:0x041f, B:165:0x03cc, B:167:0x03da, B:144:0x0367, B:120:0x02dd, B:121:0x02e5, B:83:0x021e, B:16:0x0057, B:152:0x0394, B:153:0x039c, B:8:0x0026, B:138:0x0337, B:141:0x0352), top: B:228:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0337 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void startUploadRequest() {
        /*
            Method dump skipped, instructions count: 1362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileUploadOperation.startUploadRequest():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009b, code lost:
        if (r21.uploadingFilePath.toLowerCase().endsWith(r9) != false) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$startUploadRequest$4(int r22, int[] r23, int r24, byte[] r25, int r26, int r27, int r28, long r29, org.telegram.tgnet.TLObject r31, org.telegram.tgnet.TLRPC$TL_error r32) {
        /*
            Method dump skipped, instructions count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileUploadOperation.lambda$startUploadRequest$4(int, int[], int, byte[], int, int, int, long, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$6() {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$startUploadRequest$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$5() {
        if (this.currentUploadRequetsCount < this.maxRequestsCount) {
            startUploadRequest();
        }
    }
}
