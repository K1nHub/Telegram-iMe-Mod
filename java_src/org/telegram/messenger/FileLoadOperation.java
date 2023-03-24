package org.telegram.messenger;

import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.utils.ImmutableByteArrayOutputStream;
import org.telegram.p048ui.LaunchActivity;
import org.telegram.p048ui.Storage.CacheModel;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputFileLocation;
import org.telegram.tgnet.TLRPC$InputWebFileLocation;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_fileHash;
import org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated;
import org.telegram.tgnet.TLRPC$TL_inputDocumentFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputPeerPhotoFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputPhotoFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetThumb;
import org.telegram.tgnet.TLRPC$TL_secureFile;
import org.telegram.tgnet.TLRPC$TL_upload_cdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_cdnFileReuploadNeeded;
import org.telegram.tgnet.TLRPC$TL_upload_file;
import org.telegram.tgnet.TLRPC$TL_upload_fileCdnRedirect;
import org.telegram.tgnet.TLRPC$TL_upload_getCdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_getCdnFileHashes;
import org.telegram.tgnet.TLRPC$TL_upload_getFile;
import org.telegram.tgnet.TLRPC$TL_upload_getWebFile;
import org.telegram.tgnet.TLRPC$TL_upload_reuploadCdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_webFile;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$WebPage;
/* loaded from: classes4.dex */
public class FileLoadOperation {
    private static final int FINISH_CODE_DEFAULT = 0;
    private static final int FINISH_CODE_FILE_ALREADY_EXIST = 1;
    public static ImmutableByteArrayOutputStream filesQueueByteBuffer = null;
    private static final int preloadMaxBytes = 2097152;
    private static final int stateCanceled = 4;
    private static final int stateDownloading = 1;
    private static final int stateFailed = 2;
    private static final int stateFinished = 3;
    private static final int stateIdle = 0;
    private boolean allowDisordererFileSave;
    private int bigFileSizeFrom;
    private long bytesCountPadding;
    private File cacheFileFinal;
    private File cacheFileGzipTemp;
    private File cacheFileParts;
    private File cacheFilePreload;
    private File cacheFileTemp;
    private File cacheIvTemp;
    private byte[] cdnCheckBytes;
    private int cdnChunkCheckSize;
    private int cdnDatacenterId;
    private HashMap<Long, TLRPC$TL_fileHash> cdnHashes;
    private byte[] cdnIv;
    private byte[] cdnKey;
    private byte[] cdnToken;
    public int currentAccount;
    private int currentDownloadChunkSize;
    private int currentMaxDownloadRequests;
    private int currentType;
    private int datacenterId;
    private ArrayList<RequestInfo> delayedRequestInfos;
    private FileLoadOperationDelegate delegate;
    private int downloadChunkSize;
    private int downloadChunkSizeAnimation;
    private int downloadChunkSizeBig;
    private long downloadedBytes;
    private boolean encryptFile;
    private byte[] encryptIv;
    private byte[] encryptKey;
    private String ext;
    private FilePathDatabase.FileMeta fileMetadata;
    private String fileName;
    private RandomAccessFile fileOutputStream;
    private RandomAccessFile filePartsStream;
    private RandomAccessFile fileReadStream;
    private RandomAccessFile fiv;
    private boolean forceSmallChunk;
    private long foundMoovSize;
    private int initialDatacenterId;
    private boolean isCdn;
    private boolean isForceRequest;
    private boolean isPreloadVideoOperation;
    private boolean isStream;

    /* renamed from: iv */
    private byte[] f1428iv;
    private byte[] key;
    protected long lastProgressUpdateTime;
    protected TLRPC$InputFileLocation location;
    private int maxCdnParts;
    private int maxDownloadRequests;
    private int maxDownloadRequestsAnimation;
    private int maxDownloadRequestsBig;
    private int moovFound;
    private long nextAtomOffset;
    private boolean nextPartWasPreloaded;
    private long nextPreloadDownloadOffset;
    private ArrayList<Range> notCheckedCdnRanges;
    private ArrayList<Range> notLoadedBytesRanges;
    private volatile ArrayList<Range> notLoadedBytesRangesCopy;
    private ArrayList<Range> notRequestedBytesRanges;
    public Object parentObject;
    public FilePathDatabase.PathData pathSaveData;
    private volatile boolean paused;
    private boolean preloadFinished;
    private long preloadNotRequestedBytesCount;
    private RandomAccessFile preloadStream;
    private int preloadStreamFileOffset;
    private byte[] preloadTempBuffer;
    private int preloadTempBufferCount;
    private HashMap<Long, PreloadRange> preloadedBytesRanges;
    private int priority;
    private FileLoaderPriorityQueue priorityQueue;
    private RequestInfo priorityRequestInfo;
    private int renameRetryCount;
    private ArrayList<RequestInfo> requestInfos;
    private long requestedBytesCount;
    private HashMap<Long, Integer> requestedPreloadedBytesRanges;
    private boolean requestingCdnOffsets;
    protected boolean requestingReference;
    private int requestsCount;
    private boolean reuploadingCdn;
    private long startTime;
    private boolean started;
    private volatile int state;
    private String storeFileName;
    private File storePath;
    FileLoadOperationStream stream;
    private ArrayList<FileLoadOperationStream> streamListeners;
    long streamOffset;
    boolean streamPriority;
    private long streamPriorityStartOffset;
    private long streamStartOffset;
    private boolean supportsPreloading;
    private File tempPath;
    public long totalBytesCount;
    private int totalPreloadedBytes;
    long totalTime;
    private boolean ungzip;
    private WebFile webFile;
    private TLRPC$InputWebFileLocation webLocation;
    public static volatile DispatchQueue filesQueue = new DispatchQueue("writeFileQueue");
    private static final Object lockObject = new Object();

    /* loaded from: classes4.dex */
    public interface FileLoadOperationDelegate {
        void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2);

        void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i);

        void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file);

        boolean hasAnotherRefOnFile(String str);

        void saveFilePath(FilePathDatabase.PathData pathData, File file);
    }

    public void setStream(FileLoadOperationStream fileLoadOperationStream, boolean z, long j) {
        this.stream = fileLoadOperationStream;
        this.streamOffset = j;
        this.streamPriority = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public static class RequestInfo {
        private boolean forceSmallChunk;
        private long offset;
        public long requestStartTime;
        private int requestToken;
        private TLRPC$TL_upload_file response;
        private TLRPC$TL_upload_cdnFile responseCdn;
        private TLRPC$TL_upload_webFile responseWeb;

        protected RequestInfo() {
        }
    }

    /* loaded from: classes4.dex */
    public static class Range {
        private long end;
        private long start;

        private Range(long j, long j2) {
            this.start = j;
            this.end = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class PreloadRange {
        private long fileOffset;
        private long length;

        private PreloadRange(long j, long j2) {
            this.fileOffset = j;
            this.length = j2;
        }
    }

    private void updateParams() {
        if (MessagesController.getInstance(this.currentAccount).getfileExperimentalParams && !this.forceSmallChunk) {
            this.downloadChunkSizeBig = 524288;
            this.maxDownloadRequests = 8;
            this.maxDownloadRequestsBig = 8;
        } else {
            this.downloadChunkSizeBig = 131072;
            this.maxDownloadRequests = 4;
            this.maxDownloadRequestsBig = 4;
        }
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / this.downloadChunkSizeBig);
    }

    public FileLoadOperation(ImageLocation imageLocation, Object obj, String str, long j) {
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        boolean z = false;
        this.state = 0;
        updateParams();
        this.parentObject = obj;
        this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
        this.isStream = imageLocation.imageType == 2;
        if (imageLocation.isEncrypted()) {
            TLRPC$InputFileLocation tLRPC$InputFileLocation = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputEncryptedFileLocation
                public static int constructor = -182231723;

                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData, boolean z2) {
                    this.f1519id = abstractSerializedData.readInt64(z2);
                    this.access_hash = abstractSerializedData.readInt64(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                    abstractSerializedData.writeInt64(this.f1519id);
                    abstractSerializedData.writeInt64(this.access_hash);
                }
            };
            this.location = tLRPC$InputFileLocation;
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = imageLocation.location;
            long j2 = tLRPC$TL_fileLocationToBeDeprecated.volume_id;
            tLRPC$InputFileLocation.f1519id = j2;
            tLRPC$InputFileLocation.volume_id = j2;
            tLRPC$InputFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated.local_id;
            tLRPC$InputFileLocation.access_hash = imageLocation.access_hash;
            byte[] bArr = new byte[32];
            this.f1428iv = bArr;
            System.arraycopy(imageLocation.f1433iv, 0, bArr, 0, bArr.length);
            this.key = imageLocation.key;
        } else if (imageLocation.photoPeer != null) {
            TLRPC$TL_inputPeerPhotoFileLocation tLRPC$TL_inputPeerPhotoFileLocation = new TLRPC$TL_inputPeerPhotoFileLocation();
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated2 = imageLocation.location;
            long j3 = tLRPC$TL_fileLocationToBeDeprecated2.volume_id;
            tLRPC$TL_inputPeerPhotoFileLocation.f1519id = j3;
            tLRPC$TL_inputPeerPhotoFileLocation.volume_id = j3;
            tLRPC$TL_inputPeerPhotoFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated2.local_id;
            tLRPC$TL_inputPeerPhotoFileLocation.photo_id = imageLocation.photoId;
            tLRPC$TL_inputPeerPhotoFileLocation.big = imageLocation.photoPeerType == 0;
            tLRPC$TL_inputPeerPhotoFileLocation.peer = imageLocation.photoPeer;
            this.location = tLRPC$TL_inputPeerPhotoFileLocation;
        } else if (imageLocation.stickerSet != null) {
            TLRPC$TL_inputStickerSetThumb tLRPC$TL_inputStickerSetThumb = new TLRPC$TL_inputStickerSetThumb();
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated3 = imageLocation.location;
            long j4 = tLRPC$TL_fileLocationToBeDeprecated3.volume_id;
            tLRPC$TL_inputStickerSetThumb.f1519id = j4;
            tLRPC$TL_inputStickerSetThumb.volume_id = j4;
            tLRPC$TL_inputStickerSetThumb.local_id = tLRPC$TL_fileLocationToBeDeprecated3.local_id;
            tLRPC$TL_inputStickerSetThumb.thumb_version = imageLocation.thumbVersion;
            tLRPC$TL_inputStickerSetThumb.stickerset = imageLocation.stickerSet;
            this.location = tLRPC$TL_inputStickerSetThumb;
        } else if (imageLocation.thumbSize != null) {
            if (imageLocation.photoId != 0) {
                TLRPC$TL_inputPhotoFileLocation tLRPC$TL_inputPhotoFileLocation = new TLRPC$TL_inputPhotoFileLocation();
                this.location = tLRPC$TL_inputPhotoFileLocation;
                tLRPC$TL_inputPhotoFileLocation.f1519id = imageLocation.photoId;
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated4 = imageLocation.location;
                tLRPC$TL_inputPhotoFileLocation.volume_id = tLRPC$TL_fileLocationToBeDeprecated4.volume_id;
                tLRPC$TL_inputPhotoFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated4.local_id;
                tLRPC$TL_inputPhotoFileLocation.access_hash = imageLocation.access_hash;
                tLRPC$TL_inputPhotoFileLocation.file_reference = imageLocation.file_reference;
                tLRPC$TL_inputPhotoFileLocation.thumb_size = imageLocation.thumbSize;
                if (imageLocation.imageType == 2) {
                    this.allowDisordererFileSave = true;
                }
            } else {
                TLRPC$TL_inputDocumentFileLocation tLRPC$TL_inputDocumentFileLocation = new TLRPC$TL_inputDocumentFileLocation();
                this.location = tLRPC$TL_inputDocumentFileLocation;
                tLRPC$TL_inputDocumentFileLocation.f1519id = imageLocation.documentId;
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated5 = imageLocation.location;
                tLRPC$TL_inputDocumentFileLocation.volume_id = tLRPC$TL_fileLocationToBeDeprecated5.volume_id;
                tLRPC$TL_inputDocumentFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated5.local_id;
                tLRPC$TL_inputDocumentFileLocation.access_hash = imageLocation.access_hash;
                tLRPC$TL_inputDocumentFileLocation.file_reference = imageLocation.file_reference;
                tLRPC$TL_inputDocumentFileLocation.thumb_size = imageLocation.thumbSize;
            }
            TLRPC$InputFileLocation tLRPC$InputFileLocation2 = this.location;
            if (tLRPC$InputFileLocation2.file_reference == null) {
                tLRPC$InputFileLocation2.file_reference = new byte[0];
            }
        } else {
            TLRPC$InputFileLocation tLRPC$InputFileLocation3 = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputFileLocation
                public static int constructor = -539317279;

                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData, boolean z2) {
                    this.volume_id = abstractSerializedData.readInt64(z2);
                    this.local_id = abstractSerializedData.readInt32(z2);
                    this.secret = abstractSerializedData.readInt64(z2);
                    this.file_reference = abstractSerializedData.readByteArray(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                    abstractSerializedData.writeInt64(this.volume_id);
                    abstractSerializedData.writeInt32(this.local_id);
                    abstractSerializedData.writeInt64(this.secret);
                    abstractSerializedData.writeByteArray(this.file_reference);
                }
            };
            this.location = tLRPC$InputFileLocation3;
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated6 = imageLocation.location;
            tLRPC$InputFileLocation3.volume_id = tLRPC$TL_fileLocationToBeDeprecated6.volume_id;
            tLRPC$InputFileLocation3.local_id = tLRPC$TL_fileLocationToBeDeprecated6.local_id;
            tLRPC$InputFileLocation3.secret = imageLocation.access_hash;
            byte[] bArr2 = imageLocation.file_reference;
            tLRPC$InputFileLocation3.file_reference = bArr2;
            if (bArr2 == null) {
                tLRPC$InputFileLocation3.file_reference = new byte[0];
            }
            this.allowDisordererFileSave = true;
        }
        int i = imageLocation.imageType;
        this.ungzip = (i == 1 || i == 3) ? true : z;
        int i2 = imageLocation.dc_id;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        this.currentType = ConnectionsManager.FileTypePhoto;
        this.totalBytesCount = j;
        this.ext = str == null ? "jpg" : str;
    }

    public FileLoadOperation(SecureDocument secureDocument) {
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        updateParams();
        TLRPC$InputFileLocation tLRPC$InputFileLocation = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputSecureFileLocation
            public static int constructor = -876089816;

            @Override // org.telegram.tgnet.TLObject
            public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
                this.f1519id = abstractSerializedData.readInt64(z);
                this.access_hash = abstractSerializedData.readInt64(z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(constructor);
                abstractSerializedData.writeInt64(this.f1519id);
                abstractSerializedData.writeInt64(this.access_hash);
            }
        };
        this.location = tLRPC$InputFileLocation;
        TLRPC$TL_secureFile tLRPC$TL_secureFile = secureDocument.secureFile;
        tLRPC$InputFileLocation.f1519id = tLRPC$TL_secureFile.f1626id;
        tLRPC$InputFileLocation.access_hash = tLRPC$TL_secureFile.access_hash;
        this.datacenterId = tLRPC$TL_secureFile.dc_id;
        this.totalBytesCount = tLRPC$TL_secureFile.size;
        this.allowDisordererFileSave = true;
        this.currentType = ConnectionsManager.FileTypeFile;
        this.ext = ".jpg";
    }

    public FileLoadOperation(int i, WebFile webFile) {
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        updateParams();
        this.currentAccount = i;
        this.webFile = webFile;
        this.webLocation = webFile.location;
        this.totalBytesCount = webFile.size;
        int i2 = MessagesController.getInstance(i).webFileDatacenterId;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        String mimeTypePart = FileLoader.getMimeTypePart(webFile.mime_type);
        if (webFile.mime_type.startsWith("image/")) {
            this.currentType = ConnectionsManager.FileTypePhoto;
        } else if (webFile.mime_type.equals(MimeTypes.AUDIO_OGG)) {
            this.currentType = ConnectionsManager.FileTypeAudio;
        } else if (webFile.mime_type.startsWith("video/")) {
            this.currentType = ConnectionsManager.FileTypeVideo;
        } else {
            this.currentType = ConnectionsManager.FileTypeFile;
        }
        this.allowDisordererFileSave = true;
        this.ext = ImageLoader.getHttpUrlExtension(webFile.url, mimeTypePart);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0101 A[Catch: Exception -> 0x0128, TryCatch #0 {Exception -> 0x0128, blocks: (B:3:0x0030, B:6:0x0040, B:18:0x00a6, B:20:0x00b0, B:25:0x00be, B:27:0x00c8, B:29:0x00d2, B:30:0x00da, B:32:0x00e2, B:35:0x00ec, B:37:0x00f7, B:39:0x0101, B:44:0x0117, B:46:0x011f, B:40:0x0106, B:42:0x010e, B:43:0x0113, B:36:0x00f5, B:7:0x0066, B:9:0x006a, B:11:0x0081, B:12:0x0085, B:14:0x0096, B:16:0x00a0, B:17:0x00a3), top: B:51:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0106 A[Catch: Exception -> 0x0128, TryCatch #0 {Exception -> 0x0128, blocks: (B:3:0x0030, B:6:0x0040, B:18:0x00a6, B:20:0x00b0, B:25:0x00be, B:27:0x00c8, B:29:0x00d2, B:30:0x00da, B:32:0x00e2, B:35:0x00ec, B:37:0x00f7, B:39:0x0101, B:44:0x0117, B:46:0x011f, B:40:0x0106, B:42:0x010e, B:43:0x0113, B:36:0x00f5, B:7:0x0066, B:9:0x006a, B:11:0x0081, B:12:0x0085, B:14:0x0096, B:16:0x00a0, B:17:0x00a3), top: B:51:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f A[Catch: Exception -> 0x0128, TRY_LEAVE, TryCatch #0 {Exception -> 0x0128, blocks: (B:3:0x0030, B:6:0x0040, B:18:0x00a6, B:20:0x00b0, B:25:0x00be, B:27:0x00c8, B:29:0x00d2, B:30:0x00da, B:32:0x00e2, B:35:0x00ec, B:37:0x00f7, B:39:0x0101, B:44:0x0117, B:46:0x011f, B:40:0x0106, B:42:0x010e, B:43:0x0113, B:36:0x00f5, B:7:0x0066, B:9:0x006a, B:11:0x0081, B:12:0x0085, B:14:0x0096, B:16:0x00a0, B:17:0x00a3), top: B:51:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileLoadOperation(org.telegram.tgnet.TLRPC$Document r12, java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.<init>(org.telegram.tgnet.TLRPC$Document, java.lang.Object):void");
    }

    public void setEncryptFile(boolean z) {
        this.encryptFile = z;
        if (z) {
            this.allowDisordererFileSave = false;
        }
    }

    public int getDatacenterId() {
        return this.initialDatacenterId;
    }

    public void setForceRequest(boolean z) {
        this.isForceRequest = z;
    }

    public boolean isForceRequest() {
        return this.isForceRequest;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPaths(int i, String str, FileLoaderPriorityQueue fileLoaderPriorityQueue, File file, File file2, String str2) {
        this.storePath = file;
        this.tempPath = file2;
        this.currentAccount = i;
        this.fileName = str;
        this.storeFileName = str2;
        this.priorityQueue = fileLoaderPriorityQueue;
    }

    public FileLoaderPriorityQueue getQueue() {
        return this.priorityQueue;
    }

    public boolean wasStarted() {
        return this.started && !this.paused;
    }

    public int getCurrentType() {
        return this.currentType;
    }

    private void removePart(ArrayList<Range> arrayList, long j, long j2) {
        boolean z;
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Range range = arrayList.get(i2);
            if (j == range.end) {
                range.end = j2;
            } else if (j2 == range.start) {
                range.start = j;
            }
            z = true;
        }
        z = false;
        Collections.sort(arrayList, FileLoadOperation$$ExternalSyntheticLambda15.INSTANCE);
        while (i < arrayList.size() - 1) {
            Range range2 = arrayList.get(i);
            int i3 = i + 1;
            Range range3 = arrayList.get(i3);
            if (range2.end == range3.start) {
                range2.end = range3.end;
                arrayList.remove(i3);
                i--;
            }
            i++;
        }
        if (z) {
            return;
        }
        arrayList.add(new Range(j, j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$removePart$0(Range range, Range range2) {
        if (range.start > range2.start) {
            return 1;
        }
        return range.start < range2.start ? -1 : 0;
    }

    private void addPart(ArrayList<Range> arrayList, long j, long j2, boolean z) {
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            Range range = arrayList.get(i);
            if (j <= range.start) {
                if (j2 < range.end) {
                    if (j2 > range.start) {
                        range.start = j2;
                    }
                } else {
                    arrayList.remove(i);
                }
                z2 = true;
                break;
            }
            if (j2 >= range.end) {
                if (j < range.end) {
                    range.end = j;
                }
            } else {
                arrayList.add(0, new Range(range.start, j));
                range.start = j2;
            }
            z2 = true;
            break;
        }
        if (z) {
            if (z2) {
                final ArrayList arrayList2 = new ArrayList(arrayList);
                filesQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLoadOperation.this.lambda$addPart$1(arrayList2);
                    }
                });
                notifyStreamListeners();
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.m47e(this.cacheFileFinal + " downloaded duplicate file part " + j + " - " + j2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addPart$1(ArrayList arrayList) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            FileLog.m44e((Throwable) e, false);
            if (AndroidUtilities.isENOSPC(e)) {
                LaunchActivity.checkFreeDiscSpaceStatic(1);
            }
        }
        if (this.filePartsStream == null) {
            return;
        }
        int size = arrayList.size();
        int i = (size * 16) + 4;
        ImmutableByteArrayOutputStream immutableByteArrayOutputStream = filesQueueByteBuffer;
        if (immutableByteArrayOutputStream == null) {
            filesQueueByteBuffer = new ImmutableByteArrayOutputStream(i);
        } else {
            immutableByteArrayOutputStream.reset();
        }
        filesQueueByteBuffer.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Range range = (Range) arrayList.get(i2);
            filesQueueByteBuffer.writeLong(range.start);
            filesQueueByteBuffer.writeLong(range.end);
        }
        synchronized (this) {
            RandomAccessFile randomAccessFile = this.filePartsStream;
            if (randomAccessFile == null) {
                return;
            }
            randomAccessFile.seek(0L);
            this.filePartsStream.write(filesQueueByteBuffer.buf, 0, i);
            this.totalTime += System.currentTimeMillis() - currentTimeMillis;
        }
    }

    private void notifyStreamListeners() {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.streamListeners.get(i).newDataAvailable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getCacheFileFinal() {
        return this.cacheFileFinal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getCurrentFile() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final File[] fileArr = new File[1];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$getCurrentFile$2(fileArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        return fileArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrentFile$2(File[] fileArr, CountDownLatch countDownLatch) {
        if (this.state == 3) {
            fileArr[0] = this.cacheFileFinal;
        } else {
            fileArr[0] = this.cacheFileTemp;
        }
        countDownLatch.countDown();
    }

    private long getDownloadedLengthFromOffsetInternal(ArrayList<Range> arrayList, long j, long j2) {
        long j3;
        if (arrayList == null || this.state == 3 || arrayList.isEmpty()) {
            if (this.state == 3) {
                return j2;
            }
            long j4 = this.downloadedBytes;
            if (j4 == 0) {
                return 0L;
            }
            return Math.min(j2, Math.max(j4 - j, 0L));
        }
        int size = arrayList.size();
        Range range = null;
        int i = 0;
        while (true) {
            if (i >= size) {
                j3 = j2;
                break;
            }
            Range range2 = arrayList.get(i);
            if (j <= range2.start && (range == null || range2.start < range.start)) {
                range = range2;
            }
            if (range2.start <= j && range2.end > j) {
                j3 = 0;
                break;
            }
            i++;
        }
        if (j3 == 0) {
            return 0L;
        }
        if (range != null) {
            return Math.min(j2, range.start - j);
        }
        return Math.min(j2, Math.max(this.totalBytesCount - j, 0L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getDownloadedLengthFromOffset(float f) {
        ArrayList<Range> arrayList = this.notLoadedBytesRangesCopy;
        long j = this.totalBytesCount;
        return (j == 0 || arrayList == null) ? BitmapDescriptorFactory.HUE_RED : f + (((float) getDownloadedLengthFromOffsetInternal(arrayList, (int) (((float) j) * f), j)) / ((float) this.totalBytesCount));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long[] getDownloadedLengthFromOffset(final long j, final long j2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[2];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$getDownloadedLengthFromOffset$3(jArr, j, j2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception unused) {
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadedLengthFromOffset$3(long[] jArr, long j, long j2, CountDownLatch countDownLatch) {
        jArr[0] = getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j, j2);
        if (this.state == 3) {
            jArr[1] = 1;
        }
        countDownLatch.countDown();
    }

    public String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeStreamListener(final FileLoadOperationStream fileLoadOperationStream) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$removeStreamListener$4(fileLoadOperationStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeStreamListener$4(FileLoadOperationStream fileLoadOperationStream) {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(fileLoadOperationStream);
    }

    private void copyNotLoadedRanges() {
        if (this.notLoadedBytesRanges == null) {
            return;
        }
        this.notLoadedBytesRangesCopy = new ArrayList<>(this.notLoadedBytesRanges);
    }

    public void pause() {
        if (this.state != 1) {
            return;
        }
        this.paused = true;
    }

    public boolean start() {
        return start(this.stream, this.streamOffset, this.streamPriority);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x03ea, code lost:
        if (r6 != r27.cacheFileFinal.length()) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05fd  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0740  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x076c  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x07b3  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0818  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x083d A[Catch: Exception -> 0x0843, TRY_LEAVE, TryCatch #14 {Exception -> 0x0843, blocks: (B:312:0x082c, B:314:0x083d), top: B:368:0x082c }] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x085b  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x086c  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0608 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean start(final org.telegram.messenger.FileLoadOperationStream r28, final long r29, final boolean r31) {
        /*
            Method dump skipped, instructions count: 2208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.start(org.telegram.messenger.FileLoadOperationStream, long, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$5(boolean z, long j, FileLoadOperationStream fileLoadOperationStream, boolean z2) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (z) {
            int i = this.currentDownloadChunkSize;
            long j2 = (j / i) * i;
            RequestInfo requestInfo = this.priorityRequestInfo;
            if (requestInfo != null && requestInfo.offset != j2) {
                this.requestInfos.remove(this.priorityRequestInfo);
                this.requestedBytesCount -= this.currentDownloadChunkSize;
                removePart(this.notRequestedBytesRanges, this.priorityRequestInfo.offset, this.currentDownloadChunkSize + this.priorityRequestInfo.offset);
                if (this.priorityRequestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.priorityRequestInfo.requestToken, true);
                    this.requestsCount--;
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m48d("frame get cancel request at offset " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (this.priorityRequestInfo == null) {
                this.streamPriorityStartOffset = j2;
            }
        } else {
            int i2 = this.currentDownloadChunkSize;
            this.streamStartOffset = (j / i2) * i2;
        }
        this.streamListeners.add(fileLoadOperationStream);
        if (z2) {
            if (this.preloadedBytesRanges != null && getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, this.streamStartOffset, 1L) == 0 && this.preloadedBytesRanges.get(Long.valueOf(this.streamStartOffset)) != null) {
                this.nextPartWasPreloaded = true;
            }
            startDownloadRequest();
            this.nextPartWasPreloaded = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$6(boolean[] zArr) {
        long j = this.totalBytesCount;
        if (j != 0 && ((this.isPreloadVideoOperation && zArr[0]) || this.downloadedBytes == j)) {
            try {
                onFinishLoadingFile(false, 1);
                return;
            } catch (Exception unused) {
                onFail(true, 0);
                return;
            }
        }
        startDownloadRequest();
    }

    public void updateProgress() {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            long j = this.downloadedBytes;
            long j2 = this.totalBytesCount;
            if (j == j2 || j2 <= 0) {
                return;
            }
            fileLoadOperationDelegate.didChangedLoadProgress(this, j, j2);
        }
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void setIsPreloadVideoOperation(final boolean z) {
        boolean z2 = this.isPreloadVideoOperation;
        if (z2 != z) {
            if (!z || this.totalBytesCount > 2097152) {
                if (!z && z2) {
                    if (this.state == 3) {
                        this.isPreloadVideoOperation = z;
                        this.state = 0;
                        this.preloadFinished = false;
                        start();
                        return;
                    } else if (this.state == 1) {
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.this.lambda$setIsPreloadVideoOperation$7(z);
                            }
                        });
                        return;
                    } else {
                        this.isPreloadVideoOperation = z;
                        return;
                    }
                }
                this.isPreloadVideoOperation = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsPreloadVideoOperation$7(boolean z) {
        this.requestedBytesCount = 0L;
        clearOperaion(null, true);
        this.isPreloadVideoOperation = z;
        startDownloadRequest();
    }

    public boolean isPreloadVideoOperation() {
        return this.isPreloadVideoOperation;
    }

    public boolean isPreloadFinished() {
        return this.preloadFinished;
    }

    public void cancel() {
        cancel(false);
    }

    public void cancel(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$cancel$8(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$8(boolean z) {
        if (this.state != 3 && this.state != 2) {
            cancelRequests();
            onFail(false, 1);
        }
        if (z) {
            File file = this.cacheFileFinal;
            if (file != null) {
                try {
                    if (!file.delete()) {
                        this.cacheFileFinal.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            File file2 = this.cacheFileTemp;
            if (file2 != null) {
                try {
                    if (!file2.delete()) {
                        this.cacheFileTemp.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.m45e(e2);
                }
            }
            File file3 = this.cacheFileParts;
            if (file3 != null) {
                try {
                    if (!file3.delete()) {
                        this.cacheFileParts.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.m45e(e3);
                }
            }
            File file4 = this.cacheIvTemp;
            if (file4 != null) {
                try {
                    if (!file4.delete()) {
                        this.cacheIvTemp.deleteOnExit();
                    }
                } catch (Exception e4) {
                    FileLog.m45e(e4);
                }
            }
            File file5 = this.cacheFilePreload;
            if (file5 != null) {
                try {
                    if (file5.delete()) {
                        return;
                    }
                    this.cacheFilePreload.deleteOnExit();
                } catch (Exception e5) {
                    FileLog.m45e(e5);
                }
            }
        }
    }

    private void cancelRequests() {
        if (this.requestInfos != null) {
            for (int i = 0; i < this.requestInfos.size(); i++) {
                RequestInfo requestInfo = this.requestInfos.get(i);
                if (requestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true);
                }
            }
        }
    }

    private void cleanup() {
        try {
            RandomAccessFile randomAccessFile = this.fileOutputStream;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.getChannel().close();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
                this.fileOutputStream.close();
                this.fileOutputStream = null;
            }
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
        try {
            RandomAccessFile randomAccessFile2 = this.preloadStream;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.getChannel().close();
                } catch (Exception e3) {
                    FileLog.m45e(e3);
                }
                this.preloadStream.close();
                this.preloadStream = null;
            }
        } catch (Exception e4) {
            FileLog.m45e(e4);
        }
        try {
            RandomAccessFile randomAccessFile3 = this.fileReadStream;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.getChannel().close();
                } catch (Exception e5) {
                    FileLog.m45e(e5);
                }
                this.fileReadStream.close();
                this.fileReadStream = null;
            }
        } catch (Exception e6) {
            FileLog.m45e(e6);
        }
        try {
            if (this.filePartsStream != null) {
                synchronized (this) {
                    try {
                        this.filePartsStream.getChannel().close();
                    } catch (Exception e7) {
                        FileLog.m45e(e7);
                    }
                    this.filePartsStream.close();
                    this.filePartsStream = null;
                }
            }
        } catch (Exception e8) {
            FileLog.m45e(e8);
        }
        try {
            RandomAccessFile randomAccessFile4 = this.fiv;
            if (randomAccessFile4 != null) {
                randomAccessFile4.close();
                this.fiv = null;
            }
        } catch (Exception e9) {
            FileLog.m45e(e9);
        }
        if (this.delayedRequestInfos != null) {
            for (int i = 0; i < this.delayedRequestInfos.size(); i++) {
                RequestInfo requestInfo = this.delayedRequestInfos.get(i);
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                }
            }
            this.delayedRequestInfos.clear();
        }
    }

    private void onFinishLoadingFile(final boolean z, int i) {
        if (this.state != 1) {
            return;
        }
        this.state = 3;
        notifyStreamListeners();
        cleanup();
        if (this.isPreloadVideoOperation) {
            this.preloadFinished = true;
            if (BuildVars.DEBUG_VERSION) {
                if (i == 1) {
                    FileLog.m48d("file already exist " + this.cacheFileTemp);
                } else {
                    FileLog.m48d("finished preloading file to " + this.cacheFileTemp + " loaded " + this.totalPreloadedBytes + " of " + this.totalBytesCount);
                }
            }
            if (this.fileMetadata != null) {
                if (this.cacheFileTemp != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileTemp)));
                }
                if (this.cacheFileParts != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileParts)));
                }
            }
            this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
            return;
        }
        final File file = this.cacheIvTemp;
        final File file2 = this.cacheFileParts;
        final File file3 = this.cacheFilePreload;
        final File file4 = this.cacheFileTemp;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$onFinishLoadingFile$12(file, file2, file3, file4, z);
            }
        });
        this.cacheIvTemp = null;
        this.cacheFileParts = null;
        this.cacheFilePreload = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$onFinishLoadingFile$12(java.io.File r5, java.io.File r6, java.io.File r7, java.io.File r8, final boolean r9) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.lambda$onFinishLoadingFile$12(java.io.File, java.io.File, java.io.File, java.io.File, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$9(boolean z) {
        try {
            onFinishLoadingFile(z, 0);
        } catch (Exception unused) {
            onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$10() {
        onFail(false, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$11(boolean z) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m48d("finished downloading file to " + this.cacheFileFinal + " time = " + (System.currentTimeMillis() - this.startTime) + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
        }
        if (z) {
            int i = this.currentType;
            if (i == 50331648) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 3, 1);
            } else if (i == 33554432) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 2, 1);
            } else if (i == 16777216) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 4, 1);
            } else if (i == 67108864) {
                String str = this.ext;
                if (str != null && (str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 7, 1);
                } else {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 5, 1);
                }
            }
        }
        this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
    }

    private void delayRequestInfo(RequestInfo requestInfo) {
        this.delayedRequestInfos.add(requestInfo);
        if (requestInfo.response != null) {
            requestInfo.response.disableFree = true;
        } else if (requestInfo.responseWeb != null) {
            requestInfo.responseWeb.disableFree = true;
        } else if (requestInfo.responseCdn != null) {
            requestInfo.responseCdn.disableFree = true;
        }
    }

    private long findNextPreloadDownloadOffset(long j, long j2, NativeByteBuffer nativeByteBuffer) {
        long j3;
        int limit = nativeByteBuffer.limit();
        long j4 = j;
        do {
            if (j4 < j2 - (this.preloadTempBuffer != null ? 16 : 0)) {
                return 0L;
            }
            j3 = j2 + limit;
            if (j4 >= j3) {
                return 0L;
            }
            if (j4 >= j3 - 16) {
                long j5 = j3 - j4;
                if (j5 > 2147483647L) {
                    throw new RuntimeException("!!!");
                }
                this.preloadTempBufferCount = (int) j5;
                nativeByteBuffer.position(nativeByteBuffer.limit() - this.preloadTempBufferCount);
                nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, this.preloadTempBufferCount, false);
                return j3;
            }
            if (this.preloadTempBufferCount != 0) {
                nativeByteBuffer.position(0);
                byte[] bArr = this.preloadTempBuffer;
                int i = this.preloadTempBufferCount;
                nativeByteBuffer.readBytes(bArr, i, 16 - i, false);
                this.preloadTempBufferCount = 0;
            } else {
                long j6 = j4 - j2;
                if (j6 > 2147483647L) {
                    throw new RuntimeException("!!!");
                }
                nativeByteBuffer.position((int) j6);
                nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, 16, false);
            }
            byte[] bArr2 = this.preloadTempBuffer;
            int i2 = ((bArr2[0] & 255) << 24) + ((bArr2[1] & 255) << 16) + ((bArr2[2] & 255) << 8) + (bArr2[3] & 255);
            if (i2 == 0) {
                return 0L;
            }
            if (i2 == 1) {
                i2 = ((bArr2[12] & 255) << 24) + ((bArr2[13] & 255) << 16) + ((bArr2[14] & 255) << 8) + (bArr2[15] & 255);
            }
            if (bArr2[4] == 109 && bArr2[5] == 111 && bArr2[6] == 111 && bArr2[7] == 118) {
                return -i2;
            }
            j4 += i2;
        } while (j4 < j3);
        return j4;
    }

    private void requestFileOffsets(long j) {
        if (this.requestingCdnOffsets) {
            return;
        }
        this.requestingCdnOffsets = true;
        TLRPC$TL_upload_getCdnFileHashes tLRPC$TL_upload_getCdnFileHashes = new TLRPC$TL_upload_getCdnFileHashes();
        tLRPC$TL_upload_getCdnFileHashes.file_token = this.cdnToken;
        tLRPC$TL_upload_getCdnFileHashes.offset = j;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_upload_getCdnFileHashes, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FileLoadOperation.this.lambda$requestFileOffsets$13(tLObject, tLRPC$TL_error);
            }
        }, null, null, 0, this.datacenterId, 1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFileOffsets$13(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null) {
            onFail(false, 0);
            return;
        }
        this.requestingCdnOffsets = false;
        TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
        if (!tLRPC$Vector.objects.isEmpty()) {
            if (this.cdnHashes == null) {
                this.cdnHashes = new HashMap<>();
            }
            for (int i = 0; i < tLRPC$Vector.objects.size(); i++) {
                TLRPC$TL_fileHash tLRPC$TL_fileHash = (TLRPC$TL_fileHash) tLRPC$Vector.objects.get(i);
                this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
            }
        }
        for (int i2 = 0; i2 < this.delayedRequestInfos.size(); i2++) {
            RequestInfo requestInfo = this.delayedRequestInfos.get(i2);
            if (this.notLoadedBytesRanges != null || this.downloadedBytes == requestInfo.offset) {
                this.delayedRequestInfos.remove(i2);
                if (processRequestResult(requestInfo, null)) {
                    return;
                }
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                    return;
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                    return;
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                    return;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03c9, code lost:
        if (r0 == (r4 - r5)) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03cf, code lost:
        if (r9 != false) goto L198;
     */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0502 A[Catch: Exception -> 0x05af, TryCatch #0 {Exception -> 0x05af, blocks: (B:12:0x0057, B:14:0x005b, B:16:0x0065, B:18:0x0069, B:20:0x006f, B:29:0x0093, B:32:0x009b, B:34:0x00a3, B:36:0x00b3, B:39:0x00c1, B:41:0x00c8, B:43:0x00e0, B:44:0x0112, B:46:0x0116, B:48:0x013a, B:49:0x0162, B:51:0x0166, B:52:0x016d, B:54:0x0198, B:56:0x01ac, B:58:0x01c0, B:60:0x01d5, B:62:0x01e2, B:64:0x01e8, B:66:0x0209, B:68:0x020d, B:70:0x0213, B:72:0x0219, B:78:0x0225, B:185:0x052c, B:187:0x0534, B:189:0x0540, B:192:0x054b, B:193:0x054e, B:195:0x055a, B:197:0x0560, B:198:0x056f, B:200:0x0575, B:201:0x0584, B:203:0x058a, B:205:0x059a, B:206:0x05a0, B:208:0x05a5, B:79:0x0232, B:81:0x0236, B:59:0x01cc, B:61:0x01da, B:82:0x0240, B:102:0x0274, B:104:0x0279, B:106:0x0292, B:108:0x029a, B:113:0x02ae, B:114:0x02c4, B:115:0x02c5, B:116:0x02c9, B:118:0x02cd, B:119:0x02ff, B:121:0x0303, B:123:0x0310, B:124:0x0346, B:126:0x036c, B:128:0x037e, B:130:0x038e, B:136:0x039e, B:138:0x03b8, B:140:0x03bf, B:142:0x03c5, B:147:0x03d1, B:149:0x03e1, B:150:0x03f2, B:155:0x0403, B:156:0x040a, B:157:0x040b, B:159:0x0418, B:161:0x0456, B:163:0x0465, B:165:0x0469, B:167:0x046d, B:168:0x04b8, B:170:0x04bc, B:171:0x04da, B:173:0x04e4, B:175:0x04fe, B:177:0x0502, B:178:0x050e, B:180:0x0516, B:182:0x051b, B:133:0x0398, B:87:0x0254, B:91:0x025c, B:209:0x05a9, B:21:0x0076, B:23:0x007c, B:24:0x0083, B:26:0x0089), top: B:263:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x059a A[Catch: Exception -> 0x05af, TryCatch #0 {Exception -> 0x05af, blocks: (B:12:0x0057, B:14:0x005b, B:16:0x0065, B:18:0x0069, B:20:0x006f, B:29:0x0093, B:32:0x009b, B:34:0x00a3, B:36:0x00b3, B:39:0x00c1, B:41:0x00c8, B:43:0x00e0, B:44:0x0112, B:46:0x0116, B:48:0x013a, B:49:0x0162, B:51:0x0166, B:52:0x016d, B:54:0x0198, B:56:0x01ac, B:58:0x01c0, B:60:0x01d5, B:62:0x01e2, B:64:0x01e8, B:66:0x0209, B:68:0x020d, B:70:0x0213, B:72:0x0219, B:78:0x0225, B:185:0x052c, B:187:0x0534, B:189:0x0540, B:192:0x054b, B:193:0x054e, B:195:0x055a, B:197:0x0560, B:198:0x056f, B:200:0x0575, B:201:0x0584, B:203:0x058a, B:205:0x059a, B:206:0x05a0, B:208:0x05a5, B:79:0x0232, B:81:0x0236, B:59:0x01cc, B:61:0x01da, B:82:0x0240, B:102:0x0274, B:104:0x0279, B:106:0x0292, B:108:0x029a, B:113:0x02ae, B:114:0x02c4, B:115:0x02c5, B:116:0x02c9, B:118:0x02cd, B:119:0x02ff, B:121:0x0303, B:123:0x0310, B:124:0x0346, B:126:0x036c, B:128:0x037e, B:130:0x038e, B:136:0x039e, B:138:0x03b8, B:140:0x03bf, B:142:0x03c5, B:147:0x03d1, B:149:0x03e1, B:150:0x03f2, B:155:0x0403, B:156:0x040a, B:157:0x040b, B:159:0x0418, B:161:0x0456, B:163:0x0465, B:165:0x0469, B:167:0x046d, B:168:0x04b8, B:170:0x04bc, B:171:0x04da, B:173:0x04e4, B:175:0x04fe, B:177:0x0502, B:178:0x050e, B:180:0x0516, B:182:0x051b, B:133:0x0398, B:87:0x0254, B:91:0x025c, B:209:0x05a9, B:21:0x0076, B:23:0x007c, B:24:0x0083, B:26:0x0089), top: B:263:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x05a0 A[Catch: Exception -> 0x05af, TryCatch #0 {Exception -> 0x05af, blocks: (B:12:0x0057, B:14:0x005b, B:16:0x0065, B:18:0x0069, B:20:0x006f, B:29:0x0093, B:32:0x009b, B:34:0x00a3, B:36:0x00b3, B:39:0x00c1, B:41:0x00c8, B:43:0x00e0, B:44:0x0112, B:46:0x0116, B:48:0x013a, B:49:0x0162, B:51:0x0166, B:52:0x016d, B:54:0x0198, B:56:0x01ac, B:58:0x01c0, B:60:0x01d5, B:62:0x01e2, B:64:0x01e8, B:66:0x0209, B:68:0x020d, B:70:0x0213, B:72:0x0219, B:78:0x0225, B:185:0x052c, B:187:0x0534, B:189:0x0540, B:192:0x054b, B:193:0x054e, B:195:0x055a, B:197:0x0560, B:198:0x056f, B:200:0x0575, B:201:0x0584, B:203:0x058a, B:205:0x059a, B:206:0x05a0, B:208:0x05a5, B:79:0x0232, B:81:0x0236, B:59:0x01cc, B:61:0x01da, B:82:0x0240, B:102:0x0274, B:104:0x0279, B:106:0x0292, B:108:0x029a, B:113:0x02ae, B:114:0x02c4, B:115:0x02c5, B:116:0x02c9, B:118:0x02cd, B:119:0x02ff, B:121:0x0303, B:123:0x0310, B:124:0x0346, B:126:0x036c, B:128:0x037e, B:130:0x038e, B:136:0x039e, B:138:0x03b8, B:140:0x03bf, B:142:0x03c5, B:147:0x03d1, B:149:0x03e1, B:150:0x03f2, B:155:0x0403, B:156:0x040a, B:157:0x040b, B:159:0x0418, B:161:0x0456, B:163:0x0465, B:165:0x0469, B:167:0x046d, B:168:0x04b8, B:170:0x04bc, B:171:0x04da, B:173:0x04e4, B:175:0x04fe, B:177:0x0502, B:178:0x050e, B:180:0x0516, B:182:0x051b, B:133:0x0398, B:87:0x0254, B:91:0x025c, B:209:0x05a9, B:21:0x0076, B:23:0x007c, B:24:0x0083, B:26:0x0089), top: B:263:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0225 A[Catch: Exception -> 0x05af, TryCatch #0 {Exception -> 0x05af, blocks: (B:12:0x0057, B:14:0x005b, B:16:0x0065, B:18:0x0069, B:20:0x006f, B:29:0x0093, B:32:0x009b, B:34:0x00a3, B:36:0x00b3, B:39:0x00c1, B:41:0x00c8, B:43:0x00e0, B:44:0x0112, B:46:0x0116, B:48:0x013a, B:49:0x0162, B:51:0x0166, B:52:0x016d, B:54:0x0198, B:56:0x01ac, B:58:0x01c0, B:60:0x01d5, B:62:0x01e2, B:64:0x01e8, B:66:0x0209, B:68:0x020d, B:70:0x0213, B:72:0x0219, B:78:0x0225, B:185:0x052c, B:187:0x0534, B:189:0x0540, B:192:0x054b, B:193:0x054e, B:195:0x055a, B:197:0x0560, B:198:0x056f, B:200:0x0575, B:201:0x0584, B:203:0x058a, B:205:0x059a, B:206:0x05a0, B:208:0x05a5, B:79:0x0232, B:81:0x0236, B:59:0x01cc, B:61:0x01da, B:82:0x0240, B:102:0x0274, B:104:0x0279, B:106:0x0292, B:108:0x029a, B:113:0x02ae, B:114:0x02c4, B:115:0x02c5, B:116:0x02c9, B:118:0x02cd, B:119:0x02ff, B:121:0x0303, B:123:0x0310, B:124:0x0346, B:126:0x036c, B:128:0x037e, B:130:0x038e, B:136:0x039e, B:138:0x03b8, B:140:0x03bf, B:142:0x03c5, B:147:0x03d1, B:149:0x03e1, B:150:0x03f2, B:155:0x0403, B:156:0x040a, B:157:0x040b, B:159:0x0418, B:161:0x0456, B:163:0x0465, B:165:0x0469, B:167:0x046d, B:168:0x04b8, B:170:0x04bc, B:171:0x04da, B:173:0x04e4, B:175:0x04fe, B:177:0x0502, B:178:0x050e, B:180:0x0516, B:182:0x051b, B:133:0x0398, B:87:0x0254, B:91:0x025c, B:209:0x05a9, B:21:0x0076, B:23:0x007c, B:24:0x0083, B:26:0x0089), top: B:263:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0232 A[Catch: Exception -> 0x05af, TryCatch #0 {Exception -> 0x05af, blocks: (B:12:0x0057, B:14:0x005b, B:16:0x0065, B:18:0x0069, B:20:0x006f, B:29:0x0093, B:32:0x009b, B:34:0x00a3, B:36:0x00b3, B:39:0x00c1, B:41:0x00c8, B:43:0x00e0, B:44:0x0112, B:46:0x0116, B:48:0x013a, B:49:0x0162, B:51:0x0166, B:52:0x016d, B:54:0x0198, B:56:0x01ac, B:58:0x01c0, B:60:0x01d5, B:62:0x01e2, B:64:0x01e8, B:66:0x0209, B:68:0x020d, B:70:0x0213, B:72:0x0219, B:78:0x0225, B:185:0x052c, B:187:0x0534, B:189:0x0540, B:192:0x054b, B:193:0x054e, B:195:0x055a, B:197:0x0560, B:198:0x056f, B:200:0x0575, B:201:0x0584, B:203:0x058a, B:205:0x059a, B:206:0x05a0, B:208:0x05a5, B:79:0x0232, B:81:0x0236, B:59:0x01cc, B:61:0x01da, B:82:0x0240, B:102:0x0274, B:104:0x0279, B:106:0x0292, B:108:0x029a, B:113:0x02ae, B:114:0x02c4, B:115:0x02c5, B:116:0x02c9, B:118:0x02cd, B:119:0x02ff, B:121:0x0303, B:123:0x0310, B:124:0x0346, B:126:0x036c, B:128:0x037e, B:130:0x038e, B:136:0x039e, B:138:0x03b8, B:140:0x03bf, B:142:0x03c5, B:147:0x03d1, B:149:0x03e1, B:150:0x03f2, B:155:0x0403, B:156:0x040a, B:157:0x040b, B:159:0x0418, B:161:0x0456, B:163:0x0465, B:165:0x0469, B:167:0x046d, B:168:0x04b8, B:170:0x04bc, B:171:0x04da, B:173:0x04e4, B:175:0x04fe, B:177:0x0502, B:178:0x050e, B:180:0x0516, B:182:0x051b, B:133:0x0398, B:87:0x0254, B:91:0x025c, B:209:0x05a9, B:21:0x0076, B:23:0x007c, B:24:0x0083, B:26:0x0089), top: B:263:0x0057 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean processRequestResult(org.telegram.messenger.FileLoadOperation.RequestInfo r42, org.telegram.tgnet.TLRPC$TL_error r43) {
        /*
            Method dump skipped, instructions count: 1773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.processRequestResult(org.telegram.messenger.FileLoadOperation$RequestInfo, org.telegram.tgnet.TLRPC$TL_error):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onFail(boolean z, final int i) {
        cleanup();
        this.state = i == 1 ? 4 : 2;
        if (this.delegate != null) {
            if (BuildVars.LOGS_ENABLED) {
                if (this.startTime != 0) {
                    System.currentTimeMillis();
                }
                FileLog.m48d("failed downloading file to " + this.cacheFileFinal + " reason = " + i + " time = " + (System.currentTimeMillis() - this.startTime) + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
            }
            if (z) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLoadOperation.this.lambda$onFail$14(i);
                    }
                });
            } else {
                this.delegate.didFailedLoadingFile(this, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$14(int i) {
        this.delegate.didFailedLoadingFile(this, i);
    }

    private void clearOperaion(RequestInfo requestInfo, boolean z) {
        long j = Long.MAX_VALUE;
        for (int i = 0; i < this.requestInfos.size(); i++) {
            RequestInfo requestInfo2 = this.requestInfos.get(i);
            j = Math.min(requestInfo2.offset, j);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo2.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo2.offset, this.currentDownloadChunkSize + requestInfo2.offset);
            }
            if (requestInfo != requestInfo2 && requestInfo2.requestToken != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true);
            }
        }
        this.requestInfos.clear();
        for (int i2 = 0; i2 < this.delayedRequestInfos.size(); i2++) {
            RequestInfo requestInfo3 = this.delayedRequestInfos.get(i2);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo3.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo3.offset, this.currentDownloadChunkSize + requestInfo3.offset);
            }
            if (requestInfo3.response != null) {
                requestInfo3.response.disableFree = false;
                requestInfo3.response.freeResources();
            } else if (requestInfo3.responseWeb != null) {
                requestInfo3.responseWeb.disableFree = false;
                requestInfo3.responseWeb.freeResources();
            } else if (requestInfo3.responseCdn != null) {
                requestInfo3.responseCdn.disableFree = false;
                requestInfo3.responseCdn.freeResources();
            }
            j = Math.min(requestInfo3.offset, j);
        }
        this.delayedRequestInfos.clear();
        this.requestsCount = 0;
        if (!z && this.isPreloadVideoOperation) {
            this.requestedBytesCount = this.totalPreloadedBytes;
        } else if (this.notLoadedBytesRanges == null) {
            this.downloadedBytes = j;
            this.requestedBytesCount = j;
        }
    }

    private void requestReference(RequestInfo requestInfo) {
        TLRPC$WebPage tLRPC$WebPage;
        if (this.requestingReference) {
            return;
        }
        clearOperaion(requestInfo, false);
        this.requestingReference = true;
        Object obj = this.parentObject;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.getId() < 0 && (tLRPC$WebPage = messageObject.messageOwner.media.webpage) != null) {
                this.parentObject = tLRPC$WebPage;
            }
        }
        FileRefController.getInstance(this.currentAccount).requestReference(this.parentObject, this.location, this, requestInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v11 */
    public void startDownloadRequest() {
        int i;
        long j;
        long j2;
        TLRPC$TL_upload_getFile tLRPC$TL_upload_getFile;
        boolean z;
        long j3;
        int i2;
        HashMap<Long, PreloadRange> hashMap;
        PreloadRange preloadRange;
        ArrayList<Range> arrayList;
        int i3;
        if (this.paused || this.reuploadingCdn) {
            return;
        }
        int i4 = 1;
        if (this.state == 1) {
            long j4 = 0;
            if (this.streamPriorityStartOffset == 0) {
                if (!this.nextPartWasPreloaded && this.requestInfos.size() + this.delayedRequestInfos.size() >= this.currentMaxDownloadRequests) {
                    return;
                }
                if (this.isPreloadVideoOperation) {
                    if (this.requestedBytesCount > 2097152) {
                        return;
                    }
                    if (this.moovFound != 0 && this.requestInfos.size() > 0) {
                        return;
                    }
                }
            }
            ?? r11 = 0;
            int max = (this.streamPriorityStartOffset != 0 || this.nextPartWasPreloaded || (this.isPreloadVideoOperation && this.moovFound == 0) || this.totalBytesCount <= 0) ? 1 : Math.max(0, this.currentMaxDownloadRequests - this.requestInfos.size());
            int i5 = 0;
            while (i5 < max) {
                int i6 = 2;
                if (this.isPreloadVideoOperation) {
                    if (this.moovFound != 0 && this.preloadNotRequestedBytesCount <= j4) {
                        return;
                    }
                    long j5 = this.nextPreloadDownloadOffset;
                    if (j5 == -1) {
                        int i7 = (preloadMaxBytes / this.currentDownloadChunkSize) + 2;
                        long j6 = j4;
                        while (i7 != 0) {
                            if (!this.requestedPreloadedBytesRanges.containsKey(Long.valueOf(j6))) {
                                j5 = j6;
                                i3 = i4;
                                break;
                            }
                            int i8 = this.currentDownloadChunkSize;
                            j6 += i8;
                            long j7 = this.totalBytesCount;
                            if (j6 > j7) {
                                break;
                            }
                            if (this.moovFound == i6 && j6 == i8 * 8) {
                                j6 = ((j7 - 1048576) / i8) * i8;
                            }
                            i7--;
                            i6 = 2;
                        }
                        j5 = j6;
                        i3 = r11;
                        if (i3 == 0 && this.requestInfos.isEmpty()) {
                            onFinishLoadingFile(r11, r11);
                        }
                    }
                    if (this.requestedPreloadedBytesRanges == null) {
                        this.requestedPreloadedBytesRanges = new HashMap<>();
                    }
                    this.requestedPreloadedBytesRanges.put(Long.valueOf(j5), Integer.valueOf(i4));
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m48d("start next preload from " + j5 + " size " + this.totalBytesCount + " for " + this.cacheFilePreload);
                    }
                    this.preloadNotRequestedBytesCount -= this.currentDownloadChunkSize;
                    j2 = j5;
                    i = max;
                } else {
                    ArrayList<Range> arrayList2 = this.notRequestedBytesRanges;
                    if (arrayList2 != null) {
                        long j8 = this.streamPriorityStartOffset;
                        if (j8 == j4) {
                            j8 = this.streamStartOffset;
                        }
                        int size = arrayList2.size();
                        long j9 = Long.MAX_VALUE;
                        int i9 = r11;
                        i = max;
                        long j10 = Long.MAX_VALUE;
                        while (true) {
                            if (i9 >= size) {
                                j8 = j9;
                                break;
                            }
                            Range range = this.notRequestedBytesRanges.get(i9);
                            if (j8 != j4) {
                                if (range.start <= j8 && range.end > j8) {
                                    j10 = Long.MAX_VALUE;
                                    break;
                                } else if (j8 < range.start && range.start < j9) {
                                    j9 = range.start;
                                }
                            }
                            j10 = Math.min(j10, range.start);
                            i9++;
                            j4 = 0;
                        }
                        if (j8 != Long.MAX_VALUE) {
                            j = j8;
                        } else if (j10 == Long.MAX_VALUE) {
                            return;
                        } else {
                            j = j10;
                        }
                    } else {
                        i = max;
                        j = this.requestedBytesCount;
                    }
                    j2 = j;
                }
                if (!this.isPreloadVideoOperation && (arrayList = this.notRequestedBytesRanges) != null) {
                    addPart(arrayList, j2, j2 + this.currentDownloadChunkSize, false);
                }
                long j11 = this.totalBytesCount;
                if (j11 > 0 && j2 >= j11) {
                    return;
                }
                boolean z2 = j11 <= 0 || i5 == i + (-1) || (j11 > 0 && ((long) this.currentDownloadChunkSize) + j2 >= j11);
                int i10 = this.requestsCount % 2 == 0 ? 2 : 65538;
                int i11 = this.isForceRequest ? 32 : 0;
                if (this.isCdn) {
                    TLRPC$TL_upload_getCdnFile tLRPC$TL_upload_getCdnFile = new TLRPC$TL_upload_getCdnFile();
                    tLRPC$TL_upload_getCdnFile.file_token = this.cdnToken;
                    tLRPC$TL_upload_getCdnFile.offset = j2;
                    tLRPC$TL_upload_getCdnFile.limit = this.currentDownloadChunkSize;
                    i11 |= 1;
                    tLRPC$TL_upload_getFile = tLRPC$TL_upload_getCdnFile;
                } else if (this.webLocation != null) {
                    TLRPC$TL_upload_getWebFile tLRPC$TL_upload_getWebFile = new TLRPC$TL_upload_getWebFile();
                    tLRPC$TL_upload_getWebFile.location = this.webLocation;
                    tLRPC$TL_upload_getWebFile.offset = (int) j2;
                    tLRPC$TL_upload_getWebFile.limit = this.currentDownloadChunkSize;
                    tLRPC$TL_upload_getFile = tLRPC$TL_upload_getWebFile;
                } else {
                    TLRPC$TL_upload_getFile tLRPC$TL_upload_getFile2 = new TLRPC$TL_upload_getFile();
                    tLRPC$TL_upload_getFile2.location = this.location;
                    tLRPC$TL_upload_getFile2.offset = j2;
                    tLRPC$TL_upload_getFile2.limit = this.currentDownloadChunkSize;
                    tLRPC$TL_upload_getFile2.cdn_supported = true;
                    tLRPC$TL_upload_getFile = tLRPC$TL_upload_getFile2;
                }
                int i12 = i11;
                final TLRPC$TL_upload_getFile tLRPC$TL_upload_getFile3 = tLRPC$TL_upload_getFile;
                this.requestedBytesCount += this.currentDownloadChunkSize;
                final RequestInfo requestInfo = new RequestInfo();
                this.requestInfos.add(requestInfo);
                requestInfo.offset = j2;
                requestInfo.forceSmallChunk = this.forceSmallChunk;
                if (!this.isPreloadVideoOperation && this.supportsPreloading && this.preloadStream != null && (hashMap = this.preloadedBytesRanges) != null && (preloadRange = hashMap.get(Long.valueOf(requestInfo.offset))) != null) {
                    requestInfo.response = new TLRPC$TL_upload_file();
                    try {
                        if (BuildVars.DEBUG_VERSION && preloadRange.length > 2147483647L) {
                            throw new RuntimeException("cast long to integer");
                            break;
                        }
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer((int) preloadRange.length);
                        this.preloadStream.seek(preloadRange.fileOffset);
                        this.preloadStream.getChannel().read(nativeByteBuffer.buffer);
                        z = false;
                        try {
                            nativeByteBuffer.buffer.position(0);
                            requestInfo.response.bytes = nativeByteBuffer;
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FileLoadOperation.this.lambda$startDownloadRequest$15(requestInfo);
                                }
                            });
                            i2 = 1;
                            j3 = 0;
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                    }
                    i5++;
                    j4 = j3;
                    max = i;
                    r11 = z;
                    i4 = i2;
                }
                z = false;
                if (this.streamPriorityStartOffset != 0) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m48d("frame get offset = " + this.streamPriorityStartOffset);
                    }
                    j3 = 0;
                    this.streamPriorityStartOffset = 0L;
                    this.priorityRequestInfo = requestInfo;
                } else {
                    j3 = 0;
                }
                TLRPC$InputFileLocation tLRPC$InputFileLocation = this.location;
                if (!(tLRPC$InputFileLocation instanceof TLRPC$TL_inputPeerPhotoFileLocation) || ((TLRPC$TL_inputPeerPhotoFileLocation) tLRPC$InputFileLocation).photo_id != j3) {
                    requestInfo.forceSmallChunk = this.forceSmallChunk;
                    if (BuildVars.LOGS_ENABLED) {
                        requestInfo.requestStartTime = System.currentTimeMillis();
                    }
                    final int i13 = this.isCdn ? this.cdnDatacenterId : this.datacenterId;
                    final int i14 = i10;
                    final boolean z3 = z2;
                    requestInfo.requestToken = ConnectionsManager.getInstance(this.currentAccount).sendRequestSync(tLRPC$TL_upload_getFile3, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda18
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            FileLoadOperation.this.lambda$startDownloadRequest$17(requestInfo, tLRPC$TL_upload_getFile3, i13, i14, z3, tLObject, tLRPC$TL_error);
                        }
                    }, null, null, i12, i13, i10, z2);
                    i2 = 1;
                    this.requestsCount++;
                } else {
                    requestReference(requestInfo);
                    i2 = 1;
                }
                i5++;
                j4 = j3;
                max = i;
                r11 = z;
                i4 = i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$15(RequestInfo requestInfo) {
        processRequestResult(requestInfo, null);
        requestInfo.response.freeResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$17(final RequestInfo requestInfo, TLObject tLObject, int i, int i2, boolean z, TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
        byte[] bArr;
        if (this.requestInfos.contains(requestInfo)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m48d("debug_loading: " + tLObject.getClass().getSimpleName() + " time=" + (System.currentTimeMillis() - requestInfo.requestStartTime) + " dcId=" + i + " cdn=" + this.isCdn + " connectionType=" + i2 + " " + z);
            }
            if (requestInfo == this.priorityRequestInfo) {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m48d("frame get request completed " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (tLRPC$TL_error != null) {
                if (FileRefController.isFileRefError(tLRPC$TL_error.text)) {
                    requestReference(requestInfo);
                    return;
                } else if ((tLObject instanceof TLRPC$TL_upload_getCdnFile) && tLRPC$TL_error.text.equals("FILE_TOKEN_INVALID")) {
                    this.isCdn = false;
                    clearOperaion(requestInfo, false);
                    startDownloadRequest();
                    return;
                }
            }
            if (tLObject2 instanceof TLRPC$TL_upload_fileCdnRedirect) {
                TLRPC$TL_upload_fileCdnRedirect tLRPC$TL_upload_fileCdnRedirect = (TLRPC$TL_upload_fileCdnRedirect) tLObject2;
                if (!tLRPC$TL_upload_fileCdnRedirect.file_hashes.isEmpty()) {
                    if (this.cdnHashes == null) {
                        this.cdnHashes = new HashMap<>();
                    }
                    for (int i3 = 0; i3 < tLRPC$TL_upload_fileCdnRedirect.file_hashes.size(); i3++) {
                        TLRPC$TL_fileHash tLRPC$TL_fileHash = tLRPC$TL_upload_fileCdnRedirect.file_hashes.get(i3);
                        this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
                    }
                }
                byte[] bArr2 = tLRPC$TL_upload_fileCdnRedirect.encryption_iv;
                if (bArr2 == null || (bArr = tLRPC$TL_upload_fileCdnRedirect.encryption_key) == null || bArr2.length != 16 || bArr.length != 32) {
                    TLRPC$TL_error tLRPC$TL_error2 = new TLRPC$TL_error();
                    tLRPC$TL_error2.text = "bad redirect response";
                    tLRPC$TL_error2.code = 400;
                    processRequestResult(requestInfo, tLRPC$TL_error2);
                    return;
                }
                this.isCdn = true;
                if (this.notCheckedCdnRanges == null) {
                    ArrayList<Range> arrayList = new ArrayList<>();
                    this.notCheckedCdnRanges = arrayList;
                    arrayList.add(new Range(0L, this.maxCdnParts));
                }
                this.cdnDatacenterId = tLRPC$TL_upload_fileCdnRedirect.dc_id;
                this.cdnIv = tLRPC$TL_upload_fileCdnRedirect.encryption_iv;
                this.cdnKey = tLRPC$TL_upload_fileCdnRedirect.encryption_key;
                this.cdnToken = tLRPC$TL_upload_fileCdnRedirect.file_token;
                clearOperaion(requestInfo, false);
                startDownloadRequest();
            } else if (tLObject2 instanceof TLRPC$TL_upload_cdnFileReuploadNeeded) {
                if (this.reuploadingCdn) {
                    return;
                }
                clearOperaion(requestInfo, false);
                this.reuploadingCdn = true;
                TLRPC$TL_upload_reuploadCdnFile tLRPC$TL_upload_reuploadCdnFile = new TLRPC$TL_upload_reuploadCdnFile();
                tLRPC$TL_upload_reuploadCdnFile.file_token = this.cdnToken;
                tLRPC$TL_upload_reuploadCdnFile.request_token = ((TLRPC$TL_upload_cdnFileReuploadNeeded) tLObject2).request_token;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_upload_reuploadCdnFile, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda17
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject3, TLRPC$TL_error tLRPC$TL_error3) {
                        FileLoadOperation.this.lambda$startDownloadRequest$16(requestInfo, tLObject3, tLRPC$TL_error3);
                    }
                }, null, null, 0, this.datacenterId, 1, true);
            } else {
                if (tLObject2 instanceof TLRPC$TL_upload_file) {
                    requestInfo.response = (TLRPC$TL_upload_file) tLObject2;
                } else if (tLObject2 instanceof TLRPC$TL_upload_webFile) {
                    requestInfo.responseWeb = (TLRPC$TL_upload_webFile) tLObject2;
                    if (this.totalBytesCount == 0 && requestInfo.responseWeb.size != 0) {
                        this.totalBytesCount = requestInfo.responseWeb.size;
                    }
                } else {
                    requestInfo.responseCdn = (TLRPC$TL_upload_cdnFile) tLObject2;
                }
                if (tLObject2 != null) {
                    int i4 = this.currentType;
                    if (i4 == 50331648) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 3, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 33554432) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 2, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 16777216) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 4, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 67108864) {
                        String str = this.ext;
                        if (str != null && (str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                            StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 7, tLObject2.getObjectSize() + 4);
                        } else {
                            StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 5, tLObject2.getObjectSize() + 4);
                        }
                    }
                }
                processRequestResult(requestInfo, tLRPC$TL_error);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$16(RequestInfo requestInfo, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        this.reuploadingCdn = false;
        if (tLRPC$TL_error == null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            if (!tLRPC$Vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i = 0; i < tLRPC$Vector.objects.size(); i++) {
                    TLRPC$TL_fileHash tLRPC$TL_fileHash = (TLRPC$TL_fileHash) tLRPC$Vector.objects.get(i);
                    this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
                }
            }
            startDownloadRequest();
        } else if (tLRPC$TL_error.text.equals("FILE_TOKEN_INVALID") || tLRPC$TL_error.text.equals("REQUEST_TOKEN_INVALID")) {
            this.isCdn = false;
            clearOperaion(requestInfo, false);
            startDownloadRequest();
        } else {
            onFail(false, 0);
        }
    }

    public void setDelegate(FileLoadOperationDelegate fileLoadOperationDelegate) {
        this.delegate = fileLoadOperationDelegate;
    }
}
