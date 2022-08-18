# 고드름

## 🔖 Index

- [프로젝트 소개](#%EF%B8%8F-project-overview)
  - [서버 프로젝트 소개](https://github.com/SongTaehwan/godrm-server#%EF%B8%8F-introduction)
- [앱 아키텍처](#-architecture)
- [디렉토리 구조](#-directory-structure)
- [주요 화면 및 기능](#-scenes--features)

### ⭐️ Project Overview

- 냉장고에 보관된 식재료 재고를 관리하고 유통기한 임박 알람을 설정할 수 있는 iOS 앱
- 진행 기간
  - 기획 & 디자인: 2022.7.10~2022.7.24 (2주)
  - 서버 개발: 2022.7.24~2022.8.16 (3주)
  - 앱 개발: 2022.8.17~
  - 출시일: 미정
- 기술 스택
  - 개발 환경
    - 앱: Swift 5, Xcode 13.3
    - 서버: Typescript, NodeJS
  - 라이브러리
    - 앱: RxSwift, SwiftLint, SwiftFormat, SnapKit
    - 서버: NestJS, MongoDB, serverless-framework
  - Deployment Target: iOS 14.0

### 🗺 Architecture
- MVVM-C + Clean Architecture


### 🗂 Directory Structure

```
── Godrm
│   ├── Application
│   ├── Data
│   ├── Domain
│   ├── Presentation
│   └── Resource
│       └── Font
└── GodrmTests
```

### 🌠 Scenes & Features
