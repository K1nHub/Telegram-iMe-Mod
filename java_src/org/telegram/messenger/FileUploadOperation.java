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
    private byte[] f1425iv;
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
        private byte[] f1426iv;

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
            FileLog.m48d("start upload on slow network = " + this.slowNetwork);
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
                FileLog.m48d("network changed to slow = " + this.slowNetwork);
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
            this.f1425iv = null;
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
            FileLog.m45e(e);
        }
        AutoDeleteMediaTask.unlockFile(this.uploadingFilePath);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkNewDataAvailable(final long j, final long j2) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FileUploadOperation.this.lambda$checkNewDataAvailable$3(j2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkNewDataAvailable$3(long j, long j2) {
        if (this.estimatedSize != 0 && j != 0) {
            this.estimatedSize = 0L;
            this.totalFileSize = j;
            calcTotalPartsCount();
            if (!this.uploadFirstPartLater && this.started) {
                storeFileUploadInfo();
            }
        }
        if (j <= 0) {
            j = j2;
        }
        this.availableSize = j;
        if (this.currentUploadRequetsCount < this.maxRequestsCount) {
            startUploadRequest();
        }
    }

    private void storeFileUploadInfo() {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putInt(this.fileKey + "_time", this.uploadStartTime);
        edit.putLong(this.fileKey + "_size", this.totalFileSize);
        edit.putLong(this.fileKey + "_id", this.currentFileId);
        edit.remove(this.fileKey + "_uploaded");
        if (this.isEncrypted) {
            edit.putString(this.fileKey + "_iv", Utilities.bytesToHex(this.f1425iv));
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
    /* JADX WARN: Removed duplicated region for block: B:124:0x02e1 A[Catch: Exception -> 0x04f8, TryCatch #1 {Exception -> 0x04f8, blocks: (B:5:0x0008, B:7:0x0016, B:13:0x004e, B:15:0x0054, B:17:0x005d, B:19:0x0061, B:21:0x006a, B:22:0x006c, B:24:0x0085, B:26:0x008e, B:27:0x0097, B:31:0x00a0, B:34:0x00bb, B:36:0x00bf, B:37:0x00c2, B:38:0x00c4, B:42:0x00cd, B:44:0x00da, B:45:0x00e4, B:47:0x00e8, B:48:0x00f2, B:52:0x0114, B:54:0x0149, B:56:0x014d, B:58:0x0153, B:60:0x0159, B:62:0x01ab, B:65:0x01e1, B:68:0x01f3, B:70:0x01f6, B:72:0x01f9, B:77:0x0209, B:79:0x020d, B:89:0x022d, B:92:0x023a, B:94:0x0245, B:96:0x0251, B:98:0x0255, B:100:0x025d, B:102:0x0268, B:105:0x0271, B:109:0x027e, B:110:0x0285, B:111:0x029c, B:104:0x026f, B:112:0x02a4, B:114:0x02ad, B:116:0x02c8, B:118:0x02d0, B:120:0x02d3, B:121:0x02d9, B:124:0x02e1, B:126:0x02e5, B:127:0x0305, B:129:0x0311, B:131:0x0315, B:133:0x031b, B:134:0x031e, B:143:0x0355, B:145:0x0361, B:147:0x0365, B:149:0x037c, B:148:0x0373, B:142:0x0352, B:83:0x0219, B:16:0x0057, B:150:0x037f, B:151:0x0386, B:152:0x0387, B:154:0x038d, B:157:0x039a, B:159:0x039e, B:161:0x03a7, B:163:0x03bc, B:168:0x03cc, B:170:0x03d0, B:172:0x03d4, B:174:0x03dc, B:176:0x03e7, B:178:0x03eb, B:180:0x03f1, B:186:0x0404, B:190:0x0411, B:191:0x0418, B:193:0x0445, B:195:0x0449, B:197:0x045c, B:199:0x0463, B:201:0x047b, B:203:0x047f, B:205:0x0483, B:207:0x0494, B:198:0x045f, B:200:0x0469, B:182:0x03f8, B:184:0x03fc, B:185:0x0402, B:162:0x03b1, B:164:0x03bf, B:8:0x0026, B:136:0x0322, B:139:0x033d), top: B:221:0x0008, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0361 A[Catch: Exception -> 0x04f8, TryCatch #1 {Exception -> 0x04f8, blocks: (B:5:0x0008, B:7:0x0016, B:13:0x004e, B:15:0x0054, B:17:0x005d, B:19:0x0061, B:21:0x006a, B:22:0x006c, B:24:0x0085, B:26:0x008e, B:27:0x0097, B:31:0x00a0, B:34:0x00bb, B:36:0x00bf, B:37:0x00c2, B:38:0x00c4, B:42:0x00cd, B:44:0x00da, B:45:0x00e4, B:47:0x00e8, B:48:0x00f2, B:52:0x0114, B:54:0x0149, B:56:0x014d, B:58:0x0153, B:60:0x0159, B:62:0x01ab, B:65:0x01e1, B:68:0x01f3, B:70:0x01f6, B:72:0x01f9, B:77:0x0209, B:79:0x020d, B:89:0x022d, B:92:0x023a, B:94:0x0245, B:96:0x0251, B:98:0x0255, B:100:0x025d, B:102:0x0268, B:105:0x0271, B:109:0x027e, B:110:0x0285, B:111:0x029c, B:104:0x026f, B:112:0x02a4, B:114:0x02ad, B:116:0x02c8, B:118:0x02d0, B:120:0x02d3, B:121:0x02d9, B:124:0x02e1, B:126:0x02e5, B:127:0x0305, B:129:0x0311, B:131:0x0315, B:133:0x031b, B:134:0x031e, B:143:0x0355, B:145:0x0361, B:147:0x0365, B:149:0x037c, B:148:0x0373, B:142:0x0352, B:83:0x0219, B:16:0x0057, B:150:0x037f, B:151:0x0386, B:152:0x0387, B:154:0x038d, B:157:0x039a, B:159:0x039e, B:161:0x03a7, B:163:0x03bc, B:168:0x03cc, B:170:0x03d0, B:172:0x03d4, B:174:0x03dc, B:176:0x03e7, B:178:0x03eb, B:180:0x03f1, B:186:0x0404, B:190:0x0411, B:191:0x0418, B:193:0x0445, B:195:0x0449, B:197:0x045c, B:199:0x0463, B:201:0x047b, B:203:0x047f, B:205:0x0483, B:207:0x0494, B:198:0x045f, B:200:0x0469, B:182:0x03f8, B:184:0x03fc, B:185:0x0402, B:162:0x03b1, B:164:0x03bf, B:8:0x0026, B:136:0x0322, B:139:0x033d), top: B:221:0x0008, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0322 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0229  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void startUploadRequest() {
        /*
            Method dump skipped, instructions count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileUploadOperation.startUploadRequest():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$startUploadRequest$4(int r22, int r23, byte[] r24, int r25, int r26, int r27, long r28, org.telegram.tgnet.TLObject r30, org.telegram.tgnet.TLRPC$TL_error r31) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileUploadOperation.lambda$startUploadRequest$4(int, int, byte[], int, int, int, long, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
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
