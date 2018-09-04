;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname RacketEngine) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; Racket Game Engine

;; =================
;; Constants:
(define WIDTH 800)
(define HEIGHT 600)


;; =================
;; Struct definitions:

;Position is (make-position Number Number)
;interp. position contains an x and y coordinate, (x,y) is center
(define-struct position (x y))

;Vector is (make-vector Number Number[0,360])
;interp. vector contains magnitude and angle in degrees
(define-struct vector (magnitude angle))

;Entity is (make-entity (make-position Number Number) Number [0, infinity) image vector)
;interp. entity contains a position struct, mass, the image to draw, and a velocity vector.
(define-struct entity (position mass sprite velocity))

;Collision-pair is (make-collision-pair entity entity)
;interp. two entitys that are colliding
(define-struct collision-pair (entity1 entity2))

;WS is (make-WS ListOfEntities)
;interp. WS is the worldstate, contains list of all entities in the world.
(define-struct WS (listOfEntities))

;; =================
;; Data Definitions:

;ListOfEntities is:
;-empty
;(cons entity ListOfEntities)

#;
(define (fn-for-loe loe)
  (cond [(empty? loe) ...]
        [else
         (... (first loe)
              (fn-for-loe (rest loe)))])) ;template


;; =================
;; Functions:

;;PLANNED


;; WS -> WS
;; start the world with ...
;; 
(define (main ws)
  (big-bang ws                   ; WS
            (on-tick   tock)     ; WS -> WS
            (to-draw   render)   ; WS -> Image
            (stop-when ...)      ; WS -> Boolean
            (on-mouse  ...)      ; WS Integer Integer MouseEvent -> WS
            (on-key    ...)))    ; WS KeyEvent -> WS

;; WS -> WS
;; produce the next ...
;; !!!
(define (tock ws) ...)


;; WS -> Image
;; render ... 
;; !!!
(define (render ws) ...)